//
//  MadeInTextView.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/20/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MadeInTextView : UIView

@property (strong, nonatomic) NSArray *intro;
@property (strong, nonatomic) NSString* introText;
@property (strong, nonatomic) NSTimer *printer1;
@property (strong, nonatomic) NSTimer *printer2;
@property (strong, nonatomic) NSTimer *printer3;
@property (strong, nonatomic) NSTimer *printer4;
@property (strong, nonatomic) NSTimer *printer5;
@property (strong, nonatomic) NSTimer *printer6;
@property (strong, nonatomic) NSTimer *printer7;


- (void) addWord: (NSTimer*)timer;

@end
