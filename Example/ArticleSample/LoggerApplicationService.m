//
//  LoggerApplicationService.m
//  ArticleSample
//
//  Created by Sergey Makkena on 12.03.17.
//  Copyright © 2017 Bongo Mongo. All rights reserved.
//

#import "LoggerApplicationService.h"

@implementation LoggerApplicationService

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
