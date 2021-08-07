//
//  YXWalletNoteListViewController.m
//  lianliao
//
//  Created by 廖燊 on 2021/6/26.
//  Copyright © 2021 https://www.vpubchain.info. All rights reserved.
//

#import "YXWalletNoteListViewController.h"
#import "YXNodeListViewModel.h"
#import "YXWalletProxy.h"
#import "YXNodeDetailViewController.h"
#import "YXNodeConfigViewController.h"
@interface YXWalletNoteListViewController ()
@property (nonatomic , strong)UITableView *tableView;
@property (nonatomic , strong)YXNodeListViewModel *viewModel;
@property (nonatomic , strong)YXWalletProxy *proxy;
@end

@implementation YXWalletNoteListViewController

- (YXWalletProxy *)proxy{
    if (!_proxy) {
        _proxy = [[YXWalletProxy alloc]init];
    }
    return _proxy;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    [self.viewModel reloadNewData:self.model];
    self.proxy.nodeListViewModel = self.viewModel;
    self.eventProxy = self.proxy;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
//    [self.viewModel reloadNewData:self.model];
}

- (void)setupUI{
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.right.bottom.top.offset(0);
    }];
   
}

-(YXNodeListViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [[YXNodeListViewModel alloc]init];
        YXWeakSelf
        [_viewModel setRequestNodeSuccessBlock:^(YXNodeListModel * _Nonnull model) {
            weakSelf.tableView.dataSource = weakSelf.viewModel.dataSource;
            weakSelf.tableView.delegate = weakSelf.viewModel.delegate;
            [weakSelf.tableView reloadData];
            
            if (weakSelf.requestNodeSuccessBlock) {
                weakSelf.requestNodeSuccessBlock(model);
            }
        }];
        
        [_viewModel setTouchNodeListForDetailBlock:^(YXNodeListdata * _Nonnull model) {
            YXNodeDetailViewController *detailVc = [[YXNodeDetailViewController alloc]init];
            detailVc.nodeListModel = model;
            [weakSelf.navigationController pushViewController:detailVc animated:YES];
        }];
        
        [_viewModel setConfigNodeListForDetailBlock:^(YXNodeListdata * _Nonnull model) {
            YXNodeConfigViewController *configVc = [[YXNodeConfigViewController alloc]init];
            model.walletId = weakSelf.model.walletId;
            configVc.nodeListModel = model;
            [weakSelf.navigationController pushViewController:configVc animated:YES];
        }];

    }
    return _viewModel;
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
