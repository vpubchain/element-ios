//
//  YXWalletPaymentAccountViewController.m
//  lianliao
//
//  Created by liaoshen on 2021/6/24.
//  Copyright © 2021 https://www.vpubchain.info. All rights reserved.
//

#import "YXWalletPaymentAccountViewController.h"

#import "YXWalletProxy.h"
#import "YXWalletAddAccountViewController.h"
#import "YXWalletAccountDeatilViewController.h"
#import "YXWalletViewController.h"

@interface YXWalletPaymentAccountViewController ()
@property (nonatomic , strong)YXNaviView *naviView;
@property (nonatomic , strong)YXWalletPaymentAccountViewModel *viewModel;
@property (nonatomic , strong)UITableView *tableView;
@property (nonatomic , strong)YXWalletProxy *proxy;
@property (nonatomic , strong)UIButton *shoukuanAdd;
@end

@implementation YXWalletPaymentAccountViewController

-(YXNaviView *)naviView{
    if (!_naviView) {
        _naviView = [[YXNaviView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, STATUS_AND_NAVIGATION_HEIGHT)];
        _naviView.title = @"收款账户";
        _naviView.titleColor = UIColor51;
        _naviView.leftImage = [UIImage imageNamed:@"back_b_black"];
        _naviView.backgroundColor = UIColor.whiteColor;
        YXWeakSelf
        _naviView.backBlock = ^{
           
            if (weakSelf.viewModel.accountModel.data.records.count == 0) {

                UINavigationController *navigationVC = weakSelf.navigationController;
                UIViewController *currentVC;
                for (UIViewController *vc in navigationVC.viewControllers) {
                    if ([vc isKindOfClass:YXWalletViewController.class]) {
                        currentVC = vc;
                    }
                }
                if (currentVC) {
                    [weakSelf.navigationController popToViewController:currentVC animated:YES];
                }else{
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
                
            }else{
                //当前用户已经设置了收款账户
                if (weakSelf.backBlock) {
                    weakSelf.backBlock();
                }
                [weakSelf.navigationController popViewControllerAnimated:YES];
            }
        };
 
    }
    return _naviView;
}

-(UIButton *)shoukuanAdd{
    if (!_shoukuanAdd) {
        _shoukuanAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        [_shoukuanAdd setImage:[UIImage imageNamed:@"shoukuan_add"] forState:UIControlStateNormal];
        [_shoukuanAdd addTarget:self action:@selector(shoukuanAddAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _shoukuanAdd;
}

- (void)shoukuanAddAction{
    YXWalletAddAccountViewController *addVc = [[YXWalletAddAccountViewController alloc]init];
    [self.navigationController pushViewController:addVc animated:YES];
}

-(YXWalletPaymentAccountViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [[YXWalletPaymentAccountViewModel alloc]init];
        YXWeakSelf
        [_viewModel setReloadData:^{
            weakSelf.tableView.dataSource = weakSelf.viewModel.dataSource;
            weakSelf.tableView.delegate = weakSelf.viewModel.delegate;
            [weakSelf.tableView reloadData];
        }];
        
        [_viewModel setTouchSettingBlock:^(YXWalletPaymentAccountRecordsItem * _Nonnull model) {
            YXWalletAccountDeatilViewController *detailVC = [[YXWalletAccountDeatilViewController alloc]init];
            detailVC.model = model;
            detailVC.unBindingSuccessBlock = ^{
//                [weakSelf.viewModel reloadNewData];
            };
            [weakSelf.navigationController pushViewController:detailVC animated:YES];
        }];
        
        [_viewModel setSelectAccountBlock:^(YXWalletPaymentAccountRecordsItem * _Nonnull model) {
            if (weakSelf.isCash) {
                if (weakSelf.settingDefaultSuccessBlock) {
                    weakSelf.settingDefaultSuccessBlock(model);
                }
                [weakSelf.navigationController popViewControllerAnimated:YES];
            }else{
                [weakSelf.viewModel reloadNewData];
            }
        }];
        
        [_viewModel setSettingDefaultSuccessBlock:^(YXWalletPaymentAccountRecordsItem * _Nonnull model) {
            if (weakSelf.isCash) {
                if (weakSelf.settingDefaultSuccessBlock) {
                    weakSelf.settingDefaultSuccessBlock(model);
                }
                [weakSelf.navigationController popViewControllerAnimated:YES];
            }else{
                [weakSelf.viewModel reloadNewData];
            }
        }];
    }
    return _viewModel;
}

- (YXWalletProxy *)proxy{
    if (!_proxy) {
        _proxy = [[YXWalletProxy alloc]init];
    }
    return _proxy;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.viewModel reloadNewData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = kBgColor;
    [self.view addSubview:self.naviView];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.right.bottom.offset(0);
        make.top.mas_equalTo(STATUS_AND_NAVIGATION_HEIGHT);
    }];
    
    [self.view addSubview:self.shoukuanAdd];
    [self.shoukuanAdd mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(50);
        make.right.mas_equalTo(-20);
        make.bottom.mas_equalTo(-50);
    }];
    
    [self.viewModel reloadNewData];
    
    self.proxy.paymentAccountViewModel = self.viewModel;
    self.eventProxy = self.proxy;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 0) style:(UITableViewStylePlain)];
        _tableView.alwaysBounceVertical = YES;
        [_tableView setBackgroundColor:kBgColor];
        _tableView.estimatedRowHeight = 0.0f;
        _tableView.estimatedSectionHeaderHeight = 0.0f;
        _tableView.estimatedSectionFooterHeight = 0.0f;
        _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectZero];
        _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorColor = [UIColor clearColor];
        _tableView.showsVerticalScrollIndicator = YES;
        if (@available(iOS 11.0, *)) {
               _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass(UITableViewCell.class)];

    }
    return _tableView;
}

@end
