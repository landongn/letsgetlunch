//
//  NavContainer.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/2/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "NavContainer.h"
#import <QuartzCore/QuartzCore.h>

@implementation NavContainer {
    UIColor *foodColor;
    UIColor *locationColor;
    UIColor *inboxColor;
    UIColor *drinksColor;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

        foodColor = [UIColor colorWithRed: 1 green: 0.35 blue: 0.35 alpha: 1];
        locationColor = [UIColor colorWithRed: 0.745 green: 0.887 blue: 0.727 alpha: 1];
        inboxColor = [UIColor colorWithRed: 0.448 green: 0.779 blue: 0.778 alpha: 1];
        drinksColor = [UIColor colorWithRed: 0.644 green: 0.532 blue: 0.701 alpha: 1];
        self.layer.backgroundColor = [UIColor whiteColor].CGColor;
        self.backgroundColor = [UIColor clearColor];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateColor:) name:@"MenuBarIndexChanged" object:nil];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.166];
    
    //// Shadow Declarations
    UIColor* shadow = strokeColor;
    CGSize shadowOffset = CGSizeMake(4.1, -0.1);
    CGFloat shadowBlurRadius = 6;
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 64, 460)];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, shadow.CGColor);
    CGContextRestoreGState(context);
    
    [strokeColor setStroke];
    rectanglePath.lineWidth = 1;
    [rectanglePath stroke];

}

- (void) updateColor:(NSNotification *)notification {
    
    if ([[notification.userInfo valueForKey:@"type"] isEqualToString:@"food"]) {
        NSLog(@"changing color to food");
        [UIView animateWithDuration:0.25f animations:^{
            self.layer.backgroundColor = foodColor.CGColor;
        }];
        return;
    }
    
    if ([[notification.userInfo valueForKey:@"type"] isEqualToString:@"drinks"]) {
        NSLog(@"changing color to drinks");
        [UIView animateWithDuration:0.25f animations:^{
            self.layer.backgroundColor = drinksColor.CGColor;
        }];
        return;
    }
    if ([[notification.userInfo valueForKey:@"type"] isEqualToString:@"location"]) {
        NSLog(@"changing color to location");
        [UIView animateWithDuration:0.25f animations:^{
            self.layer.backgroundColor = locationColor.CGColor;
        }];
        return;
    }
    if ([[notification.userInfo valueForKey:@"type"] isEqualToString:@"inbox"]) {
        NSLog(@"changing color to inbox");
        [UIView animateWithDuration:0.25f animations:^{
            self.layer.backgroundColor = inboxColor.CGColor;
        }];
        return;
    }
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self forKeyPath:@"MenuBarIndexChanged"];
}


@end
