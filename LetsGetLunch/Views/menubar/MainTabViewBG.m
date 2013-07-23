//
//  MainTabViewBG.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/22/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "MainTabViewBG.h"

@implementation MainTabViewBG

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
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 1 green: 0.343 blue: 0.343 alpha: 1];
    //// barBG Drawing
    UIBezierPath* barBGPath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 320, 55)];
    [fillColor setFill];
    [barBGPath fill];

}


@end
