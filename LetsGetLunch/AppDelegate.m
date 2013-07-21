//
//  AppDelegate.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabViewController.h"
#import "LoadingViewController.h"

@implementation AppDelegate {
    BOOL firstLoad;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    firstLoad = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(loadingFinished:)
                                                 name:@"AppLoaded"
                                               object:nil];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    if (firstLoad) {
        self.window.rootViewController = [[LoadingViewController alloc] init];
        firstLoad = NO;
    } else {
        [self.window setRootViewController:[[MainTabViewController alloc] init]];
    }
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)loadingFinished:(NSNotification *)notification {
    self.window.rootViewController = [[MainTabViewController alloc] initWithNibName:nil bundle:nil];
}

@end
