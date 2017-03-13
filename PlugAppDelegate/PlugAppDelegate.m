//
//  PluggableApplicationDelegate.m
//  ArticleSample
//
//  Created by Sergey Mustafaev on 12.03.17.
//  Copyright © 2017 Bongo Mongo. All rights reserved.
//

#import "PlugAppDelegate.h"

@interface PlugAppDelegate ()
@property (nonatomic, strong) id <ApplicationService> service;

@end

@implementation PlugAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions NS_AVAILABLE_IOS(3_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didFinishLaunchingWithOptions:)]) {
            [srv application:application didFinishLaunchingWithOptions:launchOptions];
        }
    }

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application NS_AVAILABLE_IOS(2_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationWillResignActive:)]) {
            [srv applicationWillResignActive:application];
        }
    }
}

- (void)applicationDidEnterBackground:(UIApplication *)application NS_AVAILABLE_IOS(4_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationDidEnterBackground:)]) {
            [srv applicationDidEnterBackground:application];
        }
    }
}

- (void)applicationWillEnterForeground:(UIApplication *)application NS_AVAILABLE_IOS(4_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationWillEnterForeground:)]) {
            [srv applicationWillEnterForeground:application];
        }
    }
}

- (void)applicationDidBecomeActive:(UIApplication *)application NS_AVAILABLE_IOS(2_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationDidBecomeActive:)]) {
            [srv applicationDidBecomeActive:application];
        }
    }
}

- (void)applicationWillTerminate:(UIApplication *)application NS_AVAILABLE_IOS(2_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationWillTerminate:)]) {
            [srv applicationWillTerminate:application];
        }
    }
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options NS_AVAILABLE_IOS(9_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:openURL:options:)]) {
            [srv application:app openURL:url options:options];
        }
    }
    return YES;
}

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions NS_AVAILABLE_IOS(6_0){
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:willFinishLaunchingWithOptions:)]) {
            [srv application:application willFinishLaunchingWithOptions:launchOptions];
        }
    }
    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url NS_DEPRECATED_IOS(2_0, 9_0, "Please use application:openURL:options:") __TVOS_PROHIBITED {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:handleOpenURL:)]) {
            [srv application:application handleOpenURL:url];
        }
    }
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation  NS_DEPRECATED_IOS(4_2, 9_0, "Please use application:openURL:options:") __TVOS_PROHIBITED {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:openURL:sourceApplication:annotation:)]) {
            [srv application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
        }
    }
    return YES;
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application NS_AVAILABLE_IOS(2_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationDidReceiveMemoryWarning:)]) {
            [srv applicationDidReceiveMemoryWarning:application];
        }
    }
}

- (void)applicationSignificantTimeChange:(UIApplication *)application NS_AVAILABLE_IOS(2_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationSignificantTimeChange:)]) {
            [srv applicationSignificantTimeChange:application];
        }
    }
}

- (void)application:(UIApplication *)application willChangeStatusBarOrientation:(UIInterfaceOrientation)newStatusBarOrientation duration:(NSTimeInterval)duration NS_AVAILABLE_IOS(2_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:willChangeStatusBarOrientation:duration:)]) {
            [srv application:application willChangeStatusBarOrientation:newStatusBarOrientation duration:duration];
        }
    }
}

- (void)application:(UIApplication *)application didChangeStatusBarOrientation:(UIInterfaceOrientation)oldStatusBarOrientation NS_AVAILABLE_IOS(2_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didChangeStatusBarOrientation:)]) {
            [srv application:application didChangeStatusBarOrientation:oldStatusBarOrientation];
        }
    }
}

- (void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings NS_AVAILABLE_IOS(8_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didRegisterUserNotificationSettings:)]) {
            [srv application:application didRegisterUserNotificationSettings:notificationSettings];
        }
    }
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken NS_AVAILABLE_IOS(3_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didRegisterForRemoteNotificationsWithDeviceToken:)]) {
            [srv application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
        }
    }
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error NS_AVAILABLE_IOS(3_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didFailToRegisterForRemoteNotificationsWithError:)]) {
            [srv application:application didFailToRegisterForRemoteNotificationsWithError:error];
        }
    }
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo NS_DEPRECATED_IOS(3_0, 10_0, "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate willPresentNotification:withCompletionHandler:] or -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:] for user visible notifications and -[UIApplicationDelegate application:didReceiveRemoteNotification:fetchCompletionHandler:] for silent remote notifications") {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didReceiveRemoteNotification:)]) {
            [srv application:application didReceiveRemoteNotification:userInfo];
        }
    }
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification NS_DEPRECATED_IOS(4_0, 10_0, "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate willPresentNotification:withCompletionHandler:] or -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]") __TVOS_PROHIBITED {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didReceiveLocalNotification:)]) {
            [srv application:application didReceiveLocalNotification:notification];
        }
    }
}

- (void)application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)notification completionHandler:(void (^)())completionHandler NS_DEPRECATED_IOS(8_0, 10_0, "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]") __TVOS_PROHIBITED {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:handleActionWithIdentifier:forLocalNotification:completionHandler:)]) {
            [srv application:application handleActionWithIdentifier:identifier forLocalNotification:notification completionHandler:completionHandler];
        }
    }
}

- (void)application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)userInfo completionHandler:(void (^)())completionHandler NS_DEPRECATED_IOS(8_0, 10_0, "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]") __TVOS_PROHIBITED {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:handleActionWithIdentifier:forRemoteNotification:completionHandler:)]) {
            [srv application:application handleActionWithIdentifier:identifier forRemoteNotification:userInfo completionHandler:completionHandler];
        }
    }
}

- (void)application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)notification withResponseInfo:(NSDictionary *)responseInfo completionHandler:(void (^)())completionHandler NS_DEPRECATED_IOS(9_0, 10_0, "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]") __TVOS_PROHIBITED {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:handleActionWithIdentifier:forLocalNotification:withResponseInfo:completionHandler:)]) {
            [srv application:application handleActionWithIdentifier:identifier forLocalNotification:notification withResponseInfo:responseInfo completionHandler:completionHandler];
        }
    }
}

- (void)application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)userInfo withResponseInfo:(NSDictionary *)responseInfo completionHandler:(void (^)())completionHandler NS_DEPRECATED_IOS(9_0, 10_0, "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]") __TVOS_PROHIBITED {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:handleActionWithIdentifier:forRemoteNotification:withResponseInfo:completionHandler:)]) {
            [srv application:application handleActionWithIdentifier:identifier forRemoteNotification:userInfo withResponseInfo:responseInfo completionHandler:completionHandler];
        }
    }
}


/*! This delegate method offers an opportunity for applications with the "remote-notification" background mode to fetch appropriate new data in response to an incoming remote notification. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
 */
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler NS_AVAILABLE_IOS(7_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didReceiveRemoteNotification:fetchCompletionHandler:)]) {
            [srv application:application didReceiveRemoteNotification:userInfo fetchCompletionHandler:completionHandler];
        }
    }
}

// Applications with the "fetch" background mode may be given opportunities to fetch updated content in the background or when it is convenient for the system. This method will be called in these situations. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler NS_AVAILABLE_IOS(7_0) __TVOS_PROHIBITED {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:performFetchWithCompletionHandler:)]) {
            [srv application:application performFetchWithCompletionHandler:completionHandler];
        }
    }
}

// Called when the user activates your application by selecting a shortcut on the home screen,
// except when -application:willFinishLaunchingWithOptions: or -application:didFinishLaunchingWithOptions returns NO.
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler NS_AVAILABLE_IOS(9_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:performActionForShortcutItem:completionHandler:)]) {
            [srv application:application performActionForShortcutItem:shortcutItem completionHandler:completionHandler];
        }
    }
}


// Applications using an NSURLSession with a background configuration may be launched or resumed in the background in order to handle the
// completion of tasks in that session, or to handle authentication. This method will be called with the identifier of the session needing
// attention. Once a session has been created from a configuration object with that identifier, the session's delegate will begin receiving
// callbacks. If such a session has already been created (if the app is being resumed, for instance), then the delegate will start receiving
// callbacks without any action by the application. You should call the completionHandler as soon as you're finished handling the callbacks.
- (void)application:(UIApplication *)application handleEventsForBackgroundURLSession:(NSString *)identifier completionHandler:(void (^)())completionHandler NS_AVAILABLE_IOS(7_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:handleEventsForBackgroundURLSession:completionHandler:)]) {
            [srv application:application handleEventsForBackgroundURLSession:identifier completionHandler:completionHandler];
        }
    }
}

- (void)application:(UIApplication *)application handleWatchKitExtensionRequest:(NSDictionary *)userInfo reply:(void (^)(NSDictionary * _Nullable))reply NS_AVAILABLE_IOS(8_2) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:handleWatchKitExtensionRequest:reply:)]) {
            [srv application:application handleWatchKitExtensionRequest:userInfo reply:reply];
        }
    }
}

- (void)applicationShouldRequestHealthAuthorization:(UIApplication *)application NS_AVAILABLE_IOS(9_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationShouldRequestHealthAuthorization:)]) {
            [srv applicationShouldRequestHealthAuthorization:application];
        }
    }
}

- (void)applicationProtectedDataWillBecomeUnavailable:(UIApplication *)application NS_AVAILABLE_IOS(4_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationProtectedDataWillBecomeUnavailable:)]) {
            [srv applicationProtectedDataWillBecomeUnavailable:application];
        }
    }
}

- (void)applicationProtectedDataDidBecomeAvailable:(UIApplication *)application NS_AVAILABLE_IOS(4_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(applicationProtectedDataDidBecomeAvailable:)]) {
            [srv applicationProtectedDataDidBecomeAvailable:application];
        }
    }
}


// Applications may reject specific types of extensions based on the extension point identifier.
// Constants representing common extension point identifiers are provided further down.
// If unimplemented, the default behavior is to allow the extension point identifier.
- (BOOL)application:(UIApplication *)application shouldAllowExtensionPointIdentifier:(UIApplicationExtensionPointIdentifier)extensionPointIdentifier NS_AVAILABLE_IOS(8_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:shouldAllowExtensionPointIdentifier:)]) {
            [srv application:application shouldAllowExtensionPointIdentifier:extensionPointIdentifier];
        }
    }
    return YES;
}

- (UIViewController *)application:(UIApplication *)application viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder NS_AVAILABLE_IOS(6_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:viewControllerWithRestorationIdentifierPath:coder:)]) {
            return [srv application:application viewControllerWithRestorationIdentifierPath:identifierComponents coder:coder];
        }
    }
    return nil;
}

- (BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder NS_AVAILABLE_IOS(6_0){
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:shouldSaveApplicationState:)]) {
            [srv application:application shouldSaveApplicationState:coder];
        }
    }
    return NO;
}

- (BOOL)application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder NS_AVAILABLE_IOS(6_0){
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:shouldRestoreApplicationState:)]) {
            [srv application:application shouldRestoreApplicationState:coder];
        }
    }
    return NO;
}

- (void)application:(UIApplication *)application willEncodeRestorableStateWithCoder:(NSCoder *)coder NS_AVAILABLE_IOS(6_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:willEncodeRestorableStateWithCoder:)]) {
            [srv application:application willEncodeRestorableStateWithCoder:coder];
        }
    }

}

- (void)application:(UIApplication *)application didDecodeRestorableStateWithCoder:(NSCoder *)coder NS_AVAILABLE_IOS(6_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didDecodeRestorableStateWithCoder:)]) {
            [srv application:application didDecodeRestorableStateWithCoder:coder];
        }
    }
}


// Called on the main thread as soon as the user indicates they want to continue an activity in your application. The NSUserActivity object may not be available instantly,
// so use this as an opportunity to show the user that an activity will be continued shortly.
// For each application:willContinueUserActivityWithType: invocation, you are guaranteed to get exactly one invocation of application:continueUserActivity: on success,
// or application:didFailToContinueUserActivityWithType:error: if an error was encountered.
- (BOOL)application:(UIApplication *)application willContinueUserActivityWithType:(NSString *)userActivityType NS_AVAILABLE_IOS(8_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:willContinueUserActivityWithType:)]) {
            [srv application:application willContinueUserActivityWithType:userActivityType];
        }
    }
    return NO;
}


// Called on the main thread after the NSUserActivity object is available. Use the data you stored in the NSUserActivity object to re-create what the user was doing.
// You can create/fetch any restorable objects associated with the user activity, and pass them to the restorationHandler. They will then have the UIResponder restoreUserActivityState: method
// invoked with the user activity. Invoking the restorationHandler is optional. It may be copied and invoked later, and it will bounce to the main thread to complete its work and call
// restoreUserActivityState on all objects.
- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler NS_AVAILABLE_IOS(8_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:continueUserActivity:restorationHandler:)]) {
            [srv application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
        }
    }
    return NO;
}


// If the user activity cannot be fetched after willContinueUserActivityWithType is called, this will be called on the main thread when implemented.
- (void)application:(UIApplication *)application didFailToContinueUserActivityWithType:(NSString *)userActivityType error:(NSError *)error NS_AVAILABLE_IOS(8_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didFailToContinueUserActivityWithType:error:)]) {
            [srv application:application didFailToContinueUserActivityWithType:userActivityType error:error];
        }
    }
    return;
}


// This is called on the main thread when a user activity managed by UIKit has been updated. You can use this as a last chance to add additional data to the userActivity.
- (void)application:(UIApplication *)application didUpdateUserActivity:(NSUserActivity *)userActivity NS_AVAILABLE_IOS(8_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:didUpdateUserActivity:)]) {
            [srv application:application didUpdateUserActivity:userActivity];
        }
    }
    return;
}


// This will be called on the main thread after the user indicates they want to accept a CloudKit sharing invitation in your application.
// You should use the CKShareMetadata object's shareURL and containerIdentifier to schedule a CKAcceptSharesOperation, then start using
// the resulting CKShare and its associated record(s), which will appear in the CKContainer's shared database in a zone matching that of the record's owner.
- (void)application:(UIApplication *)application userDidAcceptCloudKitShareWithMetadata:(CKShareMetadata *)cloudKitShareMetadata NS_AVAILABLE_IOS(10_0) {
    for (id<ApplicationService> srv in self.services) {
        if ([srv respondsToSelector:@selector(application:userDidAcceptCloudKitShareWithMetadata:)]) {
            [srv application:application userDidAcceptCloudKitShareWithMetadata:cloudKitShareMetadata];
        }
    }
    return;
}

@end
