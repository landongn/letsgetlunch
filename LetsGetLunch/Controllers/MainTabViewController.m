//
//  MainTabViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "MainTabViewController.h"
#import "LoadingViewController.h"
#import "MainTabViewBG.h"


@interface MainTabViewController () {
}

@end

@implementation MainTabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _Recent =            [[RecentNavigationViewController alloc] init];
        _Nearby =            [[NearbyViewController alloc] init];
        _SendInvitation =    [[InviteNavigationViewController alloc] init];
        _Inbox =             [[InboxNavigationViewController alloc] init];
        self.viewControllers = @[_Recent, _Nearby, _SendInvitation, _Inbox];
        
        
        
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
