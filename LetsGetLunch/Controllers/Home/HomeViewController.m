//
//  HomeViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/30/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _menuBarView = [[MenuBar alloc] init];
        _dashboardViewController = [[DashboardViewController alloc] init];
        self.navigationBarHidden = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    _menuBarView.alpha = 0.0f;
    [self addChildViewController:_dashboardViewController];
    [_dashboardViewController.view addSubview:_menuBarView];
    //display the menubar, animated.
    [UIView animateWithDuration:.3f delay:0.1f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _menuBarView.alpha = 1.0f;
        _menuBarView.frame = CGRectMake(0, 0, 64, 460);
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
