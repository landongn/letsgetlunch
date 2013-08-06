//
//  AppDelegate.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>

//services
#import "Router.h"
//end services

//root view controller
#import "HomeViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) HomeViewController* HVC;

- (void)loadingFinished:(NSNotification *)notification;

@end
