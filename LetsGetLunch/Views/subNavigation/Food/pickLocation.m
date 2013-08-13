//
//  GetLunchMenuButton.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/2/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "pickLocation.h"

@implementation pickLocation

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updatePosition:) name:@"MenuBarIndexChanged" object:nil];
        self.frame = CGRectMake(0, 0, 64, 64);
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor* color = [UIColor colorWithRed: 1 green: 0.35 blue: 0.35 alpha: 1];
    UIImage* image = [UIImage imageNamed: @"30-at"];
    
    
    //// Parent Rect
    UIBezierPath* parentRect = [UIBezierPath bezierPathWithRect: CGRectMake(0, 64, 64, 64)];
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
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"SubMenuFood" object:self userInfo:@{@"step": @1}];
}

-(void) updatePosition: (NSNotification *) notification {
    if (![[notification.userInfo valueForKey:@"type"] isEqual: @"food"]) {
        [UIView animateWithDuration:0.3f animations:^{
            self.frame = CGRectMake(0, 64, 64, 64);
            self.alpha = 1.0f;
        } completion:nil];
    }
}


@end
