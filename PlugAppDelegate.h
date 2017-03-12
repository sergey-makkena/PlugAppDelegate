//
//  PluggableApplicationDelegate.h
//  ArticleSample
//
//  Created by Sergey Mustafaev on 12.03.17.
//  Copyright © 2017 Bongo Mongo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ApplicationService <UIApplicationDelegate>


@end

@interface PlugAppDelegate : UIResponder<UIApplicationDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) NSArray <ApplicationService> *services;

@end
