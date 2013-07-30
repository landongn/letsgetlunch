//
//  LoadingViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "LoadingViewController.h"
#import "IntroView.h"

@interface LoadingViewController () {
}

@end

@implementation LoadingViewController

- (id)init {
    self = [super init];
    if (self) {
        // Custom initialization
        _introView = [[IntroView alloc] init];
        _madeInView = [[MadeInTextView alloc] init];
        _logoView = [[LogoRED alloc] init];
        
        self.view.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    __weak LoadingViewController *this = self;
    
    _introView.alpha = 1.0f;
    _madeInView.alpha = 1.0f;
    _logoView.alpha = 0.0f;
    
    [self.view addSubview: _introView];
    [self.view addSubview: _madeInView];
    [self.view addSubview: _logoView];

    
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    [UIView animateWithDuration:2.0f animations:^{
        _introView.alpha = 1.0f;
        _logoView.frame = CGRectMake(0, 170, 320, 120);
        _logoView.alpha = 1.0f;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.0f animations:^{
            _madeInView.alpha = 1.0f;
            _logoView.alpha = 1.0f;
        } completion:^(BOOL finished) {
            [this dismissLoadingView];
        }];
    }];
}

- (void) dismissLoadingView {
    
    __weak LoadingViewController *this = self;
    
    [UIView animateWithDuration:.50 animations:^{
        this.view.alpha = 0.0f;
    } completion:^(BOOL finished) {
        [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"AppLoaded" object:this]];
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
