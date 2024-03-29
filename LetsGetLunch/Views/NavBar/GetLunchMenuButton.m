//
//  GetLunchMenuButton.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/2/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "GetLunchMenuButton.h"

@implementation GetLunchMenuButton {
    BOOL viewsActive;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        viewsActive = NO;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updatePosition:) name:@"MenuBarIndexChanged" object:nil];
        _locationMenuButton = [[pickLocation alloc] init];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor* color = [UIColor colorWithRed: 1 green: 0.35 blue: 0.35 alpha: 1];
    UIImage* image = [UIImage imageNamed: @"125-food"];
    
    
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
        _locationMenuButton.frame = CGRectMake(0, 64, 64, 64);
        _locationMenuButton.alpha = 1.0f;

    } completion:nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"MenuBarIndexChanged" object:self userInfo:@{@"type": @"food"}];
}

-(void) updatePosition: (NSNotification *) notification {
    
    if (![[notification.userInfo valueForKey:@"type"] isEqual: @"food"]) {
        viewsActive = NO;
       [UIView animateWithDuration:0.2f animations:^{
           _locationMenuButton.frame = CGRectMake(0, 0, 64, 64);
           _locationMenuButton.alpha = 1.0f;
       } completion:^(BOOL finished) {
            [_locationMenuButton removeFromSuperview];
           _locationMenuButton = nil;
       }];
    } else {
        if(!viewsActive) {
            [self addSubview:_locationMenuButton];
        }
        
        
    }
}


@end
