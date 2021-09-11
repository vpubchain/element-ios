// 
// Copyright 2021 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import <Foundation/Foundation.h>
#define WalletManager YXWalletPasswordManager.sharedYXWalletPasswordManager
NS_ASSUME_NONNULL_BEGIN

@interface YXWalletPasswordModel : NSObject
@property (nonatomic , copy) NSString              * localDateTime;
@property (nonatomic , assign) NSInteger              status;
@property (nonatomic , copy) NSString              * msg;
@property (nonatomic , copy) NSString              * data;
@property (nonatomic , assign) BOOL              actualSuce;
@end

@interface YXWalletPasswordManager : NSObject
singleton_interface(YXWalletPasswordManager)
@property (nonatomic , strong)YXWalletPasswordModel *model;
@property (nonatomic , assign) BOOL isHavePassword;
@property (nonatomic , assign) BOOL isHavePhomeNum;
@property (nonatomic , copy) NSString *phomeNum;
@property (nonatomic , copy) NSString *userId;
@property (nonatomic , copy) NSString *passWord;//获取用户密码
@property (nonatomic , copy) NSString *updatepassWord;
@end

NS_ASSUME_NONNULL_END
