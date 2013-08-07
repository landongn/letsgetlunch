//
//  LocationManager.h
//  LetsGetLunch
//
//  Created by Landon Noss on 8/6/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


@interface LocationManager : NSObject <CLLocationManagerDelegate>


@property (strong, nonatomic) CLLocationManager *manager;

+ (id) sharedInstance;

@end
