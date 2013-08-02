//
//  GetDrinksMenuButton.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/2/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "GetDrinksMenuButton.h"

@implementation GetDrinksMenuButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor* color3 = [UIColor colorWithRed: 0.644 green: 0.532 blue: 0.701 alpha: 1];
    UIImage* image144martini = [UIImage imageNamed: @"image144martini"];
    //// Rectangle 7 Drawing
    UIBezierPath* rectangle7Path = [UIBezierPath bezierPathWithRect: CGRectMake(0, 64, 64, 64)];
    [color3 setFill];
    [rectangle7Path fill];
    
    
    //// Rectangle 8 Drawing
    UIBezierPath* rectangle8Path = [UIBezierPath bezierPathWithRect: CGRectMake(20, 83, 29, 29)];
    CGContextSaveGState(context);
    [rectangle8Path addClip];
    [image144martini drawInRect: CGRectMake(20, 83, image144martini.size.width, image144martini.size.height)];
    CGContextRestoreGState(context);

    
}


@end
