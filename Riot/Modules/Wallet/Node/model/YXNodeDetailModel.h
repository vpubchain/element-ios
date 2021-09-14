//
//  YXNodeDetailModel.h
//  lianliao
//
//  Created by liaoshen on 2021/6/28.
//  Copyright © 2021 https://www.vpubchain.info. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXNodeListModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface YXNodeDetailModel : NSObject
@property (nonatomic , assign) CGFloat cellHeight;
@property (nonatomic , assign) CGFloat descHeight;
@property (nonatomic , assign) BOOL showLine;
@property (nonatomic , copy) NSString *cellName;
@property (nonatomic , copy) NSString *title;
@property (nonatomic , copy) NSString *desc;

- (NSMutableArray <YXNodeDetailModel *>*)getCellArray:(YXNodeListdata *)model;

@end

@interface YXNodeConfigDetailModel : NSObject
@property (nonatomic , copy) NSString              * id;
@property (nonatomic , copy) NSString              * bccId;
@property (nonatomic , copy) NSString              * ip;
@property (nonatomic , copy) NSString              * port;
@property (nonatomic , copy) NSString              * vout;
@property (nonatomic , copy) NSString              * txId;
@property (nonatomic , copy) NSString              * masternodeKey;
@property (nonatomic , copy) NSString              * coin;
@property (nonatomic , assign) NSInteger              flag;
@end

@interface YXNodeConfigModel : NSObject
@property (nonatomic , copy) NSString              * localDateTime;
@property (nonatomic , strong) NSNumber              * status;
@property (nonatomic , strong) YXNodeConfigDetailModel               *data;
@property (nonatomic , copy) NSString              * msg;
@property (nonatomic , copy) NSString              * path;
@property (nonatomic , strong) NSNumber              * actualSucess;
@end

NS_ASSUME_NONNULL_END
