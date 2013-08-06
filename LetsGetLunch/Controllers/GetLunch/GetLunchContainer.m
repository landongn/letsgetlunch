//
//  GetLunchContainer.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/5/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "GetLunchContainer.h"

@interface GetLunchContainer ()

@end

@implementation GetLunchContainer

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _welcomeText = [[UILabel alloc] initWithFrame:CGRectMake(128, 128, 128, 128)];
        _personSearch = [[UITextField alloc] initWithFrame:CGRectMake(128, 256, 128, 128)];
        self.view.backgroundColor = [UIColor colorWithRed: 1 green: 0.35 blue: 0.35 alpha: 1];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _welcomeText.text = @"Lets get Lunch";
    [self.view addSubview:_welcomeText];
    _personSearch.placeholder = @"start typing a contact name";
    [self.view addSubview:_personSearch];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
