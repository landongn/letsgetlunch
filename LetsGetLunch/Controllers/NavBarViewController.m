//
//  NavBarViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/1/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//


#import "NavBarViewController.h"

@interface NavBarViewController () {
    NSArray *viewsToConfigure;
    float screenMax;
}

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
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(selectedIndexChanged:) name:@"MenuBarIndexChanged" object:nil];
        
        screenMax = [UIScreen mainScreen].bounds.size.height - 20;
        
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
    CGFloat y = 0;
    
    viewsToConfigure = @[_GetLunchMenuButton, _GetDrinksMenuButton, _FindLocationMenuButton, _OpenInboxMenuButton];
    
    for (UIView *v in viewsToConfigure) {
        v.frame = CGRectMake(x, y, width, height);
        y = y + 64;
    }
    

    [self setView:_containerView];
    _containerView.frame = CGRectMake(0, 0, 64, screenMax);
    
    [self.view addSubview:_GetLunchMenuButton];
    [self.view addSubview:_GetDrinksMenuButton];
    [self.view addSubview:_FindLocationMenuButton];
    [self.view addSubview:_OpenInboxMenuButton];
    
    CGFloat yx = 0;
    CGFloat delay = 0.30;
    
    for (UIView *v in viewsToConfigure) {
        [UIView animateWithDuration:0.45f delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
            v.frame = CGRectMake(x, yx, width, height);
        } completion:nil];
        yx = yx + 64;
        delay = delay*1.10;
    }
    
    
}

#pragma mark - Menu Methods

- (void) selectedIndexChanged:(NSNotification *)notification {

    NSString *newSelection = [notification.userInfo valueForKey:@"type"];
    CGFloat delay = 0.25f;
    
    if ([newSelection isEqualToString:@"food"]) {
        CGFloat yx = 0;
        int itr = 0;
        
        for (UIView *v in viewsToConfigure) {
            [UIView animateWithDuration:0.45f delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
                v.frame = CGRectMake(0, yx, 64, 64);
            } completion:nil];
            if (itr == 0) {
                yx = screenMax - (64*3);
                itr++;
            } else {
                yx = yx + 64;
            }

            delay = delay*1.10;
        }
    }
    if ([newSelection isEqualToString:@"drinks"]) {
        CGFloat yx = 0;
        int itr = 0;
        
        for (UIView *v in viewsToConfigure) {
            [UIView animateWithDuration:0.45f delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
                v.frame = CGRectMake(0, yx, 64, 64);
            } completion:nil];
            if (itr == 1) {
                yx = screenMax - (64 * 2);
            } else {
                yx = yx + 64;
            }
            itr++;
            
            delay = delay*1.10;
        }
    }
    if ([newSelection isEqualToString:@"location"]) {
        CGFloat yx = 0;
        int itr = 0;
        
        for (UIView *v in viewsToConfigure) {
            [UIView animateWithDuration:0.45f delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
                v.frame = CGRectMake(0, yx, 64, 64);
            } completion:nil];
            if (itr == 2) {
                yx = screenMax - (64);
            } else {
                yx = yx + 64;
            }
            itr++;
            delay = delay*1.10;
        }
    }
    if ([newSelection isEqualToString:@"inbox"]) {
        CGFloat yx = 0;
        for (UIView *v in viewsToConfigure) {
            [UIView animateWithDuration:0.45f delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
                v.frame = CGRectMake(0, yx, 64, 64);
            } completion:nil];
            yx = yx + 64;
            delay = delay*1.10;
        }
    }
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
