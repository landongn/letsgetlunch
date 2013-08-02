//
//  MenuBar.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/30/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "MenuBar.h"

@implementation MenuBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.frame  = CGRectMake(100, 0, 64, 480);
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* burnorange = [UIColor colorWithRed: 1 green: 0.35 blue: 0.35 alpha: 1];
    UIColor* limeaide = [UIColor colorWithRed: 0.745 green: 0.887 blue: 0.727 alpha: 1];
    UIColor* rain = [UIColor colorWithRed: 0.448 green: 0.779 blue: 0.778 alpha: 1];
    UIColor* color3 = [UIColor colorWithRed: 0.644 green: 0.532 blue: 0.701 alpha: 1];
    
    //// Image Declarations
    UIImage* image07mapmarker2 = [UIImage imageNamed: @"image07mapmarker2"];
    UIImage* image144martini = [UIImage imageNamed: @"image144martini"];
    UIImage* image125food2 = [UIImage imageNamed: @"image125food2"];
    UIImage* image145persondot2 = [UIImage imageNamed: @"image145persondot2"];
    
    //// Group
    {
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
    
    
    //// Group 2
    {
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
    
    
    //// Group 3
    {
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
    
    
    //// Group 4
    {
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
    
    
}


@end

