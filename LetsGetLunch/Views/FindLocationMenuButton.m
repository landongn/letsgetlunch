//
//  FindLocationMenuButton.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/2/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "FindLocationMenuButton.h"

@implementation FindLocationMenuButton

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

    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor* limeaide = [UIColor colorWithRed: 0.745 green: 0.887 blue: 0.727 alpha: 1];
    UIImage* image07mapmarker2 = [UIImage imageNamed: @"image07mapmarker2"];
    //// Rectangle 2 Drawing
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(0, 128, 64, 64)];
    [limeaide setFill];
    [rectangle2Path fill];
    
    
    //// Rectangle 5 Drawing
    UIBezierPath* rectangle5Path = [UIBezierPath bezierPathWithRect: CGRectMake(24, 146, 29, 33)];
    CGContextSaveGState(context);
    [rectangle5Path addClip];
    [image07mapmarker2 drawInRect: CGRectMake(24, 146, image07mapmarker2.size.width, image07mapmarker2.size.height)];
    CGContextRestoreGState(context);
}


@end
