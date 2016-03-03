//
//  XMGHTTPTool.m
//  备课-百思不得姐
//
//  Created by MJ Lee on 15/6/17.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "XMGHTTPTool.h"
#import "AFNetworking.h"

@implementation XMGHTTPTool
+ (void)GET:(NSString *)url params:(NSDictionary *)params success:(XMGRequestSuccess)success failure:(XMGRequestFailure)failure
{
    [[AFHTTPSessionManager manager] GET:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        !success ? : success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        !failure ? : failure(error);
    }];
}

+ (void)POST:(NSString *)url params:(NSDictionary *)params success:(XMGRequestSuccess)success failure:(XMGRequestFailure)failure
{
    [[AFHTTPSessionManager manager] POST:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        !success ? : success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        !failure ? : failure(error);
    }];
}
@end
