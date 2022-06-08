//
//  AppDelegate.m
//  UMVisualDemo
//
//  Created by wangkai on 2019/12/16.
//  Copyright © 2019 wangkai. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <UMCommonLog/UMCommonLogManager.h>
#import <UMCommon/UMCommon.h>
#import <UMCommon/MobClick.h>
#import <UMVisualConfig/UMVisualDebug.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
        [UMVisualDebug setWssDomain:@"wss://log-api-daily.aplus.emas-poc.com"];
        [UMCommonLogManager setUpUMCommonLogManager];
        [UMConfigure setLogEnabled:YES];
        [UMConfigure setCustomDomain:@"https://log-api-daily.aplus.emas-poc.com" standbyDomain:nil];
        [UMConfigure initWithAppkey:@"19508946" channel:@"App Store"];
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        self.window.backgroundColor = [UIColor whiteColor];
        ViewController *root = [[ViewController alloc]init];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:root];//先将root添加在navigation上
        [_window setRootViewController:nav];//navigation加在window上
    return YES;
}

//iOS9以上使用以下方法
- (BOOL)application:(UIApplication *)application openURL:(nonnull NSURL *)url options:(nonnull NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    if ([MobClick handleUrl:url]) {
        return YES;
    }
    //其它第三方处理
    return YES;
}

//iOS9及以下使用以下方法
- (BOOL)application:(UIApplication *)application openURL:(nonnull NSURL *)url sourceApplication:(nullable NSString *)sourceApplication annotation:(nonnull id)annotation
{
    if ([MobClick handleUrl:url]) {
        return YES;
    }
    //其它第三方处理
    return YES;
}

@end
