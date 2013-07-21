//
//  MainTabViewController.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecentNavigationViewController.h"
#import "InboxNavigationViewController.h"
#import "NearbyViewController.h"
#import "InviteNavigationViewController.h"

@interface MainTabViewController : UITabBarController

@property (nonatomic, strong) RecentNavigationViewController *Recent;
@property (nonatomic, strong) NearbyViewController *Nearby;
@property (nonatomic, strong) InviteNavigationViewController *SendInvitation;
@property (nonatomic, strong) InboxNavigationViewController *Inbox;


@end
