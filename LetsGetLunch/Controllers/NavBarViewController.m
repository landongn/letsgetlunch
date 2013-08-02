//
//  NavBarViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/1/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "NavBarViewController.h"

@interface NavBarViewController ()

@end

@implementation NavBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _GetLunchMenuButton = [[GetLunchMenuButton alloc] init];
        _GetDrinksMenuButton = [[GetDrinksMenuButton alloc] init];
        _FindLocationMenuButton = [[FindLocationMenuButton alloc] init];
        _OpenInboxMenuButton = [[OpenInboxMenuButton alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.view addSubview:_GetLunchMenuButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
