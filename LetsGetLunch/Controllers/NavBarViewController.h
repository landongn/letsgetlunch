//
//  NavBarViewController.h
//  LetsGetLunch
//
//  Created by Landon Noss on 8/1/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GetLunchMenuButton.h"
#import "GetDrinksMenuButton.h"
#import "FindLocationMenuButton.h"
#import "OpenInboxMenuButton.h"

@interface NavBarViewController : UIViewController

@property (nonatomic, strong) GetLunchMenuButton *GetLunchMenuButton;
@property (nonatomic, strong) GetDrinksMenuButton *GetDrinksMenuButton;
@property (nonatomic, strong) FindLocationMenuButton *FindLocationMenuButton;
@property (nonatomic, strong) OpenInboxMenuButton *OpenInboxMenuButton;

@end
