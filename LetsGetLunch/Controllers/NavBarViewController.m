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
        _containerView = [[NavContainer alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self positionViewsForNavigation];
}

- (void) positionViewsForNavigation {
    CGFloat height = 64;
    CGFloat width = 64;
    CGFloat x = 0;
    CGFloat y = 460;
    
    NSArray *viewsToConfigure = @[_GetLunchMenuButton, _GetDrinksMenuButton, _FindLocationMenuButton, _OpenInboxMenuButton];
    
    for (UIView *v in viewsToConfigure) {
        v.frame = CGRectMake(x, y, width, height);
        y = y + 64;
    }
    
    _containerView.frame = CGRectMake(0, 0, 64, 460);
    [self setView:_containerView];
    
    [self.view addSubview:_GetLunchMenuButton];
    [self.view addSubview:_GetDrinksMenuButton];
    [self.view addSubview:_FindLocationMenuButton];
    [self.view addSubview:_OpenInboxMenuButton];
    
    CGFloat yx = 0;
    CGFloat delay = 0.20;
    
    for (UIView *v in viewsToConfigure) {
        [UIView animateWithDuration:0.45f delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
            v.frame = CGRectMake(x, yx, width, height);
        } completion:nil];
        yx = yx + 64;
        delay = delay*1.10;
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
