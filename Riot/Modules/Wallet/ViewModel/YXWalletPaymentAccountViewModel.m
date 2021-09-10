//
//  YXWalletPaymentAccountViewModel.m
//  lianliao
//
//  Created by liaoshen on 2021/6/24.
//  Copyright © 2021 https://www.vpubchain.info. All rights reserved.
//

#import "YXWalletPaymentAccountViewModel.h"
#import "YXWalletAccountTableViewCell.h"
@implementation YXWalletPaymentAccountViewModel
- (void)reloadNewData{
    
    
    YXWeakSelf
    NSMutableDictionary *paramDict = [[NSMutableDictionary alloc]init];
    [paramDict setObject:WalletManager.userId forKey:@"userId"];
    [NetWorkManager GET:kURL(@"/account") parameters:paramDict success:^(id  _Nonnull responseObject) {
        
        if ([responseObject isKindOfClass:NSDictionary.class]) {
            YXWalletPaymentAccountModel *accountModel = [YXWalletPaymentAccountModel mj_objectWithKeyValues:responseObject];
            if (accountModel.status == 200) {
                [weakSelf setupListHeadData:accountModel.data.records];
                weakSelf.accountModel = accountModel;
            }
        }
   
    } failure:^(NSError * _Nonnull error) {
            
    }];
 
}

- (void)setupListHeadData:(NSArray <YXWalletPaymentAccountRecordsItem *>*)array{
    
    if (array.count == 0) {//用户未设置默认账户提醒用户设置
        //只有兑现的时候调用
        if (self.settingAccountNotiBlock) {
            self.settingAccountNotiBlock();
        }
    }

    [self.sectionItems removeAllObjects];
    
    NSMutableArray<SCETRowItem *> *rowItems = [NSMutableArray new];
    
    YXWeakSelf
    __block BOOL haveAccount = NO;
    __block YXWalletPaymentAccountRecordsItem *firstModel = nil;
    [array enumerateObjectsUsingBlock:^(YXWalletPaymentAccountRecordsItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (idx == 0) {
            firstModel = obj;
        }
        obj.isDetail = NO;
        SCETRowItem *lineItem = [SCETRowItem rowItemWithRowData:@"test cell" cellClassString:NSStringFromClass([YXLineTableViewCell class])];
        lineItem.cellHeight = 30;
        [rowItems addObject:lineItem];
        
        SCETRowItem *accountItem = [SCETRowItem rowItemWithRowData:obj cellClassString:NSStringFromClass([YXWalletAccountTableViewCell class])];
        accountItem.cellHeight = 100;
        [rowItems addObject:accountItem];
        
        if ([obj.acquiescence isEqualToString:@"1"]) {
            if (weakSelf.getDefaultAccountBlock) {
                weakSelf.getDefaultAccountBlock(obj);
                haveAccount = YES;
            }
        }
        
        if (array.count == 1) {//如果用户只设置了一个账号，默认是默认账户
            if (weakSelf.getDefaultAccountBlock) {
                weakSelf.getDefaultAccountBlock(obj);
                haveAccount = YES;
            }
        }
        
    }];
    
    if (!haveAccount && firstModel) {
        if (weakSelf.getDefaultAccountBlock) {
            weakSelf.getDefaultAccountBlock(firstModel);
            haveAccount = YES;
        }
    }
    
    SCETSectionItem *totalCountsectionItem = [SCETSectionItem sc_sectionItemWithRowItems:rowItems];
    [self.sectionItems addObject:totalCountsectionItem];
    
    [self resetDataSource:self.sectionItems];
    
    if (self.reloadData) {
        self.reloadData();
    }

    [self.delegate setBlockTableViewDidSelectRowAtIndexPath:^(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath) {
        [weakSelf tableView:tableView didSelectRowAtIndexPath:indexPath];

    }];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    SCETSectionItem *sectionItem = [self.dataSource.sectionItems sc_safeObjectAtIndex:indexPath.section];
    if (!sectionItem) {
        return;
    }

    SCETRowItem *rowItem = [sectionItem.rowItems sc_safeObjectAtIndex:indexPath.row];
    if (!rowItem) {
        return;
    }
    
    
    if ([rowItem.cellClassString isEqualToString:NSStringFromClass(YXWalletAccountTableViewCell.class)]) {

        [self walletAccountSettingDefault:rowItem.rowData];


    }
    
}

//解除绑定
- (void)walletAccountCancleBangding:(YXWalletPaymentAccountRecordsItem *)model{
    if (self.touchSettingBlock) {
        self.touchSettingBlock(model);
    }
}

///设置默认账户
- (void)walletAccountSettingDefault:(YXWalletPaymentAccountRecordsItem *)model{
    
    [MBProgressHUD showMessage:@"设置中..."];
    
    YXWeakSelf
    NSMutableDictionary *paramDict = [[NSMutableDictionary alloc]init];
    [paramDict setObject:model.ID forKey:@"id"];
    [NetWorkManager POST:kURL(@"/account/setting_default") parameters:paramDict success:^(id  _Nonnull responseObject) {
        [MBProgressHUD hideHUD];
        [MBProgressHUD showSuccess:@"设置成功"];
        if (weakSelf.settingDefaultSuccessBlock) {
            weakSelf.settingDefaultSuccessBlock();
        }
        
        
    } failure:^(NSError * _Nonnull error) {
        [MBProgressHUD hideHUD];
        [MBProgressHUD showSuccess:@"设置失败"];
    }];
}


@end
