//
//  Router.h
//  LetsGetLunch
//
//  Created by Landon Noss on 8/5/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <Foundation/Foundation.h>


//root view controller
#import "HomeViewController.h"


//Content view controllers
#import "InboxContainer.h"
#import "NearbyViewController.h"
#import "InviteContainer.h"
#import "GetLunchContainer.h"
#import "GetDrinksContainer.h"
//end content view controllers

@interface Router : NSObject

@property (nonatomic, weak) UIViewController *currentViewController;

- (void) changeRoute:(NSString *)newController;
- (void) changeRoute:(NSString *)newController withOptions:(NSDictionary *)options;

+ (id) sharedInstance;

@end
