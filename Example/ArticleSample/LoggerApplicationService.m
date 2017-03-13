//
//  LoggerApplicationService.m
//  ArticleSample
//
//  Created by Sergey Makkena on 12.03.17.
//  Copyright © 2017 Bongo Mongo. All rights reserved.
//

#import "LoggerApplicationService.h"

@implementation LoggerApplicationService

- (void)dealloc {
    NSLog(@"LoggerApplicationService dealloc");
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"LoggerApplicationService init");
    }
    return self;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
     NSLog(@"LoggerApplicationService didFinishLaunchingWithOptions");
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"LoggerApplicationService applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"LoggerApplicationService applicationWillEnterForeground");
}

@end
