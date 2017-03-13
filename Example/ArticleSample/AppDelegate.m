//
//  AppDelegate.m
//  ArticleSample
//
//  Created by Sergey Makkena on 12.03.17.
//  Copyright © 2017 Bongo Mongo. All rights reserved.
//

#import "AppDelegate.h"
#import "LoggerApplicationService.h"
#import "PushApplicationService.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (NSArray<ApplicationService> *)services {
    if (![super services]) {
        super.services = (NSArray<ApplicationService>*)@[[LoggerApplicationService new],
                                                         [PushApplicationService new]];
    }
    return super.services;
}


@end
