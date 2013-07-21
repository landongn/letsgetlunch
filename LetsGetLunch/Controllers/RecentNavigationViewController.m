//
//  RecentNavigationViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "RecentNavigationViewController.h"

@interface RecentNavigationViewController () {
    RecentHomeViewController *Home;
}

@end

@implementation RecentNavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        Home = [[RecentHomeViewController alloc] initWithNibName:nil bundle:nil];
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Recent" image:[UIImage imageNamed:@"253-person"] selectedImage:[UIImage imageNamed:@"253-person"]];
        self.navigationItem.title = @"Recent Contacts";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
