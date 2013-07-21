//
//  LoadingViewController.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MadeInTextView.h"
#import "IntroView.h"
#import "LogoRED.h"

@interface LoadingViewController : UIViewController

@property (nonatomic, strong) MadeInTextView* madeInView;
@property (nonatomic, strong) IntroView* introView;
@property (nonatomic, strong) LogoRED* logoView;


-(void) dismissLoadingView;

@end
