# PlugAppDelegate
[![CI Status](http://img.shields.io/travis/fmo91/PluggableApplicationDelegate.svg?style=flat)](https://travis-ci.org/fmo91/PluggableApplicationDelegate)
[![Version](https://img.shields.io/cocoapods/v/PluggableApplicationDelegate.svg?style=flat)](http://cocoapods.org/pods/PlugAppDelegate)
[![License](https://img.shields.io/cocoapods/l/PluggableApplicationDelegate.svg?style=flat)](http://cocoapods.org/pods/PlugAppDelegate)
[![Platform](https://img.shields.io/cocoapods/p/PluggableApplicationDelegate.svg?style=flat)](http://cocoapods.org/pods/PlugAppDelegate)

## Introduction
`AppDelegate` is a traditional example of bad code. Lots of line of code that makes so much different things are put together in methods that are called within the application life cycle. But all of those concerns are over.
Using `PlugAppDelegate` you decouple AppDelegate from the services that you plug to it. Each `ApplicationService` has its own life cycle that is shared with `AppDelegate`. 

## At a glance
Let see some code.
Here is how a `ApplicationService` is like:

```objective-c
#import "LoggerApplicationService.h"

@implementation LoggerApplicationService

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
     NSLog(@"LoggerApplicationService didFinishLaunchingWithOptions");
    return YES;
}

@end

```

That's all. **It is exactly the same as a AppDelegate**. Think of `ApplicationService` as sub-AppDelegates.

In `AppDelegate` you just have to inherit from PluggableApplicationDelegate to register the services.

```objective-c
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

```

## How does this work?

Basically, you do an inversion of control. Instead of let AppDelegate instantiate your dependencies, perform actions at every step of its life cycle, you create objects that share the AppDelegate life cycle and plug them into your AppDelegate.
Those objects are observers of the AppDelegate. Your AppDelegate has the only responsibility of notify them about its life cycle events.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

PluggableApplicationDelegate is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PlugAppDelegate"
```

## Authors 
Obj-C version: Sergey Makkena sergey.magnetto@gmail.com

Swift version: fmo91, ortizfernandomartin@gmail.com [PluggableApplicationDelegate](https://github.com/fmo91/PluggableApplicationDelegate)

## License

PlugAppDelegate is available under the MIT license. See the LICENSE file for more info.
