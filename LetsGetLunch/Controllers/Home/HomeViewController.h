//
//  HomeViewController.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/30/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DashboardViewController.h"
#import "MenuBar.h"

@interface HomeViewController : UINavigationController

@property (nonatomic, strong) MenuBar* menuBarView;
@property (nonatomic, strong) DashboardViewController* dashboardViewController;


@end
