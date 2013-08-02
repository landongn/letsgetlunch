//
//  OpenInboxMenuButton.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/2/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "OpenInboxMenuButton.h"

@implementation OpenInboxMenuButton

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
    UIImage* image145persondot2 = [UIImage imageNamed: @"image145persondot2"];
    UIColor* rain = [UIColor colorWithRed: 0.448 green: 0.779 blue: 0.778 alpha: 1];
    //// Rectangle 3 Drawing
    UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(0, 192, 64, 64)];
    [rain setFill];
    [rectangle3Path fill];
    
    
    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(20, 211, 29, 29)];
    CGContextSaveGState(context);
    [rectangle4Path addClip];
    [image145persondot2 drawInRect: CGRectMake(20, 211, image145persondot2.size.width, image145persondot2.size.height)];
    CGContextRestoreGState(context);
}

@end
