//
//  MadeInTextView.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/20/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "MadeInTextView.h"

@implementation MadeInTextView {
    int idx;
}

- (id)init
{
    self = [super initWithFrame:CGRectMake(40, 130, 320, 120)];
    if (self) {
        idx = 0;
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        _intro = @[@"Made ", @"with ", @"love ", @"in ", @"Santa ", @"Monica ", @"by"];
        _introText = @"";
        float f = (((arc4random()%RAND_MAX)/(RAND_MAX*1.0))*(0.80-0.00)+0.00);
        _printer1 = [NSTimer timerWithTimeInterval:sin(f) target:self selector:@selector(addWord:) userInfo:nil repeats:NO];
        [[NSRunLoop currentRunLoop] addTimer:_printer1 forMode:NSDefaultRunLoopMode];
        
        _printer2 = [NSTimer timerWithTimeInterval:sin(f) target:self selector:@selector(addWord:) userInfo:nil repeats:NO];
        [[NSRunLoop currentRunLoop] addTimer:_printer2 forMode:NSDefaultRunLoopMode];
        
        _printer3 = [NSTimer timerWithTimeInterval:sin(f) target:self selector:@selector(addWord:) userInfo:nil repeats:NO];
        [[NSRunLoop currentRunLoop] addTimer:_printer3 forMode:NSDefaultRunLoopMode];
        
        _printer4 = [NSTimer timerWithTimeInterval:sin(f) target:self selector:@selector(addWord:) userInfo:nil repeats:NO];
        [[NSRunLoop currentRunLoop] addTimer:_printer4 forMode:NSDefaultRunLoopMode];
        
        _printer5 = [NSTimer timerWithTimeInterval:sin(f) target:self selector:@selector(addWord:) userInfo:nil repeats:NO];
        [[NSRunLoop currentRunLoop] addTimer:_printer5 forMode:NSDefaultRunLoopMode];
        
        _printer6 = [NSTimer timerWithTimeInterval:sin(f) target:self selector:@selector(addWord:) userInfo:nil repeats:NO];
        [[NSRunLoop currentRunLoop] addTimer:_printer6 forMode:NSDefaultRunLoopMode];
        
        _printer7 = [NSTimer timerWithTimeInterval:sin(f) target:self selector:@selector(addWord:) userInfo:nil repeats:NO];
        [[NSRunLoop currentRunLoop] addTimer:_printer7 forMode:NSDefaultRunLoopMode];
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0.5 green: 0.5 blue: 0.5 alpha: 1];
    
    //// Abstracted Attributes
    NSString* madeInContent = _introText;
    UIFont* madeInFont = [UIFont fontWithName: @"GothamBook" size: 12];
    //// madeIn Drawing
    
    CGRect madeInRect = CGRectMake(13, 13, 300, 84);
    [strokeColor setFill];
    
    
    [madeInContent drawInRect: madeInRect withFont: madeInFont];

}

- (void) addWord: (NSTimer*) timer {
    NSString *newString = [_introText stringByAppendingString:[_intro objectAtIndex:idx]];
    _introText = newString;
    idx++;
    [self setNeedsDisplay];
    
}


@end
