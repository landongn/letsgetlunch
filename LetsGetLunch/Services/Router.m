//
//  Router.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/5/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "Router.h"
#import <Routable/Routable.h>

@implementation Router

//singleton to manage multiple requests.
+ (id) sharedInstance {
    static dispatch_once_t p = 0;
    __strong static id _sharedObject = nil;
    
    dispatch_once(&p, ^{
        _sharedObject = [[self alloc] init];
    });
    
    return _sharedObject;
}

- (id) init {
    
    if (!self) {
        self = [super init];
    }
    return self;
}


- (void) addRoute: (NSString *)route toController:(Class)controller {
    [[Routable sharedRouter] map:route toController:controller];
}

- (void) changeRoute:(NSString *)newController {
    [[Routable sharedRouter] open:newController];
}

- (void) changeRoute:(NSString *)newController withOptions:(NSDictionary *)options {
    [[Routable sharedRouter] open:newController];
}
@end
