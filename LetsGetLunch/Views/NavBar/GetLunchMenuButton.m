//
//  GetLunchMenuButton.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/2/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "GetLunchMenuButton.h"

@implementation GetLunchMenuButton

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
    UIColor* burnorange = [UIColor colorWithRed: 1 green: 0.35 blue: 0.35 alpha: 1];
    UIImage* image125food2 = [UIImage imageNamed: @"image125food2"];
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 64, 64)];
    [burnorange setFill];
    [rectanglePath fill];
    
    
    //// Rectangle 6 Drawing
    UIBezierPath* rectangle6Path = [UIBezierPath bezierPathWithRect: CGRectMake(19, 19, 29, 33)];
    CGContextSaveGState(context);
    [rectangle6Path addClip];
    [image125food2 drawInRect: CGRectMake(19, 19, image125food2.size.width, image125food2.size.height)];
    CGContextRestoreGState(context);

}


@end
