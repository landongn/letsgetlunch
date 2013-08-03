//
//  HomeViewController.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/30/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Routable/Routable.h>
#import "DashboardViewController.h"
#import "NavBarViewController.h"

@interface HomeViewController : UIViewController

@property (nonatomic, strong) NavBarViewController* menuBarView;
@property (nonatomic, strong) DashboardViewController* dashboardViewController;
@property (nonatomic, strong) UINavigationController *mainContainer;

@end
