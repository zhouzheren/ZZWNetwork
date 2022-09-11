//
//  ZZWNetworkModel.m
//  ZZWNetwork_Example
//
//  Created by 周泽文 on 2022/9/11.
//  Copyright © 2022 a595429717@163.com. All rights reserved.
//

#import "ZZWNetworkModel.h"
@interface ZZWNetworkModel()
/**
 服务器IP地址字符串
 */
@property (nonatomic,strong) NSString *httpTitle;// http or https
@end

@implementation ZZWNetworkModel
-(instancetype)init{
    self = [super init];
    if (self) {
        _isHttpsRequest = YES;
        _httpTitle = @"https";
    }
    return self;
}

-(void)setIsHttpsRequest:(BOOL)isHttpsRequest{
    _isHttpsRequest = isHttpsRequest;
    if (_isHttpsRequest) {
        _httpTitle = @"https";
    }else{
        _httpTitle = @"http";
    }
}
-(void)setIpString:(NSString *)ipString{
    _ipString = ipString;
    if (_isHttpsRequest) {
        _ipString = [_httpTitle stringByAppendingFormat:@"://%@/",ipString];//拼接url字符串
    }else{
        
    }
}
-(NSString *)getUrlString{
    NSString *urlStr = [self.ipString stringByAppendingString:self.cmd];//拼接url字符串
    return urlStr;
}
@end
