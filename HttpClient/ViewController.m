//
//  ViewController.m
//  HttpClient
//
//  Created by wan on 16/3/3.
//  Copyright © 2016年 wan. All rights reserved.
//

#import "ViewController.h"
#import "XMGHTTPTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

//    [self post];
    [self get];
}

- (void)get
{
    NSString *baseUrl = @"http://baike.baidu.com/api/openapi/BaikeLemmaCardApi?scope=103&format=json&appid=379020&bk_key=abc&bk_length=600";
//    NSMutableDictionary *params = [NSMutableDictionary dictionary];
//    
//    params[@"cityid"] =@"CN10101010018A";
//    params[@"apikey"] = @"b98d303dcc5de4c173092adee270f139";
    
    [XMGHTTPTool GET:baseUrl params:nil success:^(id json) {
        NSLog(@"%@",json);
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}
- (void)post
{
    NSString *baseUrl = @"http://baike.baidu.com/api/openapi/BaikeLemmaCardApi";
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    
    params[@"scope"] =@"103";
    params[@"format"] = @"json";
    params[@"appid"] =@"379020";
    params[@"bk_key"] = @"abc";
    params[@"bk_length"] = @"600";
    
    [XMGHTTPTool POST:baseUrl params:nil success:^(id json) {
        NSLog(@"%@",json);
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}

@end
