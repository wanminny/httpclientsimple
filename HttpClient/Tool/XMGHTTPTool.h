//
//  XMGHTTPTool.h
//  备课-百思不得姐
//
//  Created by MJ Lee on 15/6/17.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^XMGRequestSuccess)(id json);
typedef void (^XMGRequestFailure)(NSError *error);

@interface XMGHTTPTool : NSObject
+ (void)GET:(NSString *)url params:(NSDictionary *)params success:(XMGRequestSuccess)success failure:(XMGRequestFailure)failure;

+ (void)POST:(NSString *)url params:(NSDictionary *)params success:(XMGRequestSuccess)success failure:(XMGRequestFailure)failure;
@end
