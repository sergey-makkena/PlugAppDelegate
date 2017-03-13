//
//  PushApplicationService.m
//  ArticleSample
//
//  Created by Sergey Makkena on 12.03.17.
//  Copyright © 2017 Bongo Mongo. All rights reserved.
//

#import "PushApplicationService.h"

@implementation PushApplicationService

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
    NSLog(@"PushApplicationService didFinishLaunchingWithOptions!");
    return YES;
}

@end
