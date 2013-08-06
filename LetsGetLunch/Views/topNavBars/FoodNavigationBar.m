//
//  FoodNavigationBar.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/5/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "FoodNavigationBar.h"

@implementation FoodNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.frame = CGRectMake(64, 0, [UIScreen mainScreen].bounds.size.width - 64, 32);
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor* color = [UIColor colorWithRed: 1 green: 0.35 blue: 0.35 alpha: 1];
   
    //// Parent Rect
    UIBezierPath* parentRect = [UIBezierPath bezierPathWithRect:  CGRectMake(64, 0, [UIScreen mainScreen].bounds.size.width - 64, 32)];
    [color setFill];
    [parentRect fill];
    CGContextRelease(context);
    
}


@end
