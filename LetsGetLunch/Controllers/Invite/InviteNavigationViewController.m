//
//  InviteNavigationViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/20/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "InviteNavigationViewController.h"

@interface InviteNavigationViewController ()

@end

@implementation InviteNavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Send Invite" image:[UIImage imageNamed:@"145-persondot"] selectedImage:[UIImage imageNamed:@"145-persondot"]];
        self.navigationItem.title = @"Invites";
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