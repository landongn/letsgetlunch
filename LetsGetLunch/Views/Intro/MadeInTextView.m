//
//  MadeInTextView.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/20/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "MadeInTextView.h"

@implementation MadeInTextView {
    int idx;
}

- (id)init
{
    self = [super initWithFrame:CGRectMake(40, 130, 320, 120)];
    if (self) {
        idx = 0;
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0.5 green: 0.5 blue: 0.5 alpha: 1];
    
    //// Abstracted Attributes
    NSString* madeInContent = @"Made with love in Santa Monica";
    UIFont* madeInFont = [UIFont fontWithName: @"GothamBook" size: 12];
    //// madeIn Drawing
    
    CGRect madeInRect = CGRectMake(13, 13, 300, 84);
    [strokeColor setFill];
    
    
    [madeInContent drawInRect: madeInRect withFont: madeInFont];

}




@end
