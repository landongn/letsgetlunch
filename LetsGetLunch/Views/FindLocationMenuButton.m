//
//  FindLocationMenuButton.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/2/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "FindLocationMenuButton.h"

@implementation FindLocationMenuButton {
}

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

    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor* color = [UIColor colorWithRed: 0.745 green: 0.887 blue: 0.727 alpha: 1];
    UIImage* image = [UIImage imageNamed: @"07-map-marker"];
    //// Parent Rect
    UIBezierPath* parentRect = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 64, 64)];
    [color setFill];
    [parentRect fill];
    
    //// icon Rect
    UIBezierPath* iconRect = [UIBezierPath bezierPathWithRect: CGRectMake(24, 19, 16, 33)];
    CGContextSaveGState(context);
    [iconRect addClip];
    [image drawInRect: CGRectMake(24, 19, image.size.width, image.size.height)];
    CGContextRestoreGState(context);
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touched location menu bar item");
    [UIView animateWithDuration:0.35f delay:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.alpha = 1.0f;
    } completion:nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"MenuBarIndexChanged" object:self userInfo:@{@"type": @"location"}];
}

-(void) updatePosition: (NSNotification *) notification {
    if (![[notification.userInfo valueForKey:@"type"] isEqual: @"location"]) {
        [UIView animateWithDuration:0.35f delay:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
            self.alpha = 0.3f;
        } completion:nil];
    }
}
@end
