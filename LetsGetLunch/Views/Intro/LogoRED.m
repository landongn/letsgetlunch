//
//  LogoRED.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/20/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "LogoRED.h"

@implementation LogoRED

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(0, 386, 320, 120)];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 1 green: 0 blue: 0 alpha: 1];
    UIColor* color = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0];
    
    //// Abstracted Attributes
    NSString* redlogoContent = @"RED";

    UIFont* redlogoFont = [UIFont fontWithName: @"GothamUltra" size: 75];
    
    
    //// redlogo Drawing
    CGRect redlogoRect = CGRectMake(13, 13, 300, 84);
    UIBezierPath* redlogoPath = [UIBezierPath bezierPathWithRect: redlogoRect];
    [color setFill];
    [redlogoPath fill];
    [strokeColor setFill];
    [redlogoContent drawInRect: redlogoRect withFont: redlogoFont lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];
    
    
 
}


@end
