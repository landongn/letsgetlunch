//
//  HomeViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/30/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "HomeViewController.h"
#import <AddressBookUI/AddressBookUI.h>

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _menuBarView = [[NavBarViewController alloc] init];
        _dashboardViewController = [[DashboardViewController alloc] init];
        _mainContainer = [[UINavigationController alloc] init];
        _mainContainer.view.frame = CGRectMake(64, 0, [UIScreen mainScreen].bounds.size.width - 64, [UIScreen mainScreen].bounds.size.height);
        
        
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    _menuBarView.view.alpha = 0.0f;
    _menuBarView.view.frame = CGRectMake(0, 0, 64, 460);
    [self.view addSubview:_menuBarView.view];
    //display the menubar, animated.
    [UIView animateWithDuration:.3f delay:0.1f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _menuBarView.view.alpha = 1.0f;
        
    } completion:^(BOOL finished) {
        [_dashboardViewController finishLoading];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
