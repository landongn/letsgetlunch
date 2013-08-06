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
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updatePosition:) name:@"MenuBarIndexChanged" object:nil];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor* color = [UIColor colorWithRed: 0.644 green: 0.532 blue: 0.701 alpha: 1];
    UIImage* image = [UIImage imageNamed: @"144-martini"];
    
    //// Parent Rect
    UIBezierPath* parentRect = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 64, 64)];
    [color setFill];
    [parentRect fill];
    
    //// icon Rect
    UIBezierPath* iconRect = [UIBezierPath bezierPathWithRect: CGRectMake(19, 19, 29, 33)];
    CGContextSaveGState(context);
    [iconRect addClip];
    [image drawInRect: CGRectMake(19, 19, image.size.width, image.size.height)];
    CGContextRestoreGState(context);

    
}
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    [UIView animateWithDuration:0.35f delay:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.alpha = 1.0f;
    } completion:nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"MenuBarIndexChanged" object:self userInfo:@{@"type": @"drinks"}];
}

-(void) updatePosition: (NSNotification *) notification {
    if (![[notification.userInfo valueForKey:@"type"] isEqual: @"drinks"]) {
        [UIView animateWithDuration:0.35f delay:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
            self.alpha = 0.8f;
        } completion:nil];
    }
}


@end
