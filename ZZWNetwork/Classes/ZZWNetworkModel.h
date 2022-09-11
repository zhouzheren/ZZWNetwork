//
//  ZZWNetworkModel.h
//  ZZWNetwork_Example
//
//  Created by 周泽文 on 2022/9/11.
//  Copyright © 2022 a595429717@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZZWNetworkModel : NSObject

// @"https://test-api-app.hibotella.love/operate/getBlog?titleKey=legal_statement";
/**
 是否是https请求， 否的话为  http
 */
@property(nonatomic,assign)BOOL isHttpsRequest; //@"https"

/**
 服务器IP地址字符串
 */
@property (nonatomic,strong) NSString *ipString;// @"test-api-app.hibotella.love"
/**
 接口定义的编号，表示动作
 */
@property (nonatomic,strong) NSString *cmd; // @"operate/getBlog"

/**
 参数字典，绝大部分的请求都是参数字典
 */
@property (nonatomic,strong) NSDictionary *paramterDic; // @{@"titleKey":legal_statement}

/**
 参数数组，少部分的请求参数是数组
 */
@property (nonatomic,strong) NSArray *paramterArr; // @[@"titleKey=legal_statement"]

-(NSString *)getUrlString;
@end

NS_ASSUME_NONNULL_END
