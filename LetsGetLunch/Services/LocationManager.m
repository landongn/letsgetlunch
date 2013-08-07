//
//  LocationManager.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/6/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "LocationManager.h"

@implementation LocationManager {
   
}

//singleton to manage multiple requests.
+ (id) sharedInstance {
    static dispatch_once_t p = 0;
    __strong static id _sharedObject = nil;
    
    dispatch_once(&p, ^{
        _sharedObject = [[self alloc] init];
    });
    
    if (_sharedObject != nil) {
        return _sharedObject;
    } else {
        return nil;
    }
}

- (id) init {
    
    if (!self) {
        self = [super init];
        if (nil == _manager) {
            _manager = [[CLLocationManager alloc] init];
            _manager.delegate = self;
            
            BOOL permitted = [self checkPermissions];
            if (!permitted) {
                
            }
            BOOL locationEnabled = [CLLocationManager locationServicesEnabled];
            
            if(!locationEnabled) {
                UIAlertView *locationmessage = [[UIAlertView alloc] initWithTitle:@"Error Getting Location" message:@"Looks like location services are unavailable or disabled. Mind turning them on and trying again?" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
                [locationmessage show];
                return nil;
                
            }

            
            
            _manager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
            _manager.distanceFilter = 500;
            [_manager startUpdatingLocation];
            
        }
    }
    return self;
}

- (BOOL) checkPermissions {
    
    if (![CLLocationManager regionMonitoringAvailable])
        return NO;
    
    if (([CLLocationManager authorizationStatus] != kCLAuthorizationStatusAuthorized) &&
        ([CLLocationManager authorizationStatus] != kCLAuthorizationStatusNotDetermined)) {
        return NO;
    }
    
    return YES;
    
}

- (void) clearRegions {
    if ([_manager.monitoredRegions count] > 0) {
        for (id obj in _manager.monitoredRegions)
            [_manager stopMonitoringForRegion:obj];
    }
}

#pragma mark CLLocationManagerDelegate methods

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations {
    // If it's a relatively recent event, turn off updates to save power
    CLLocation* location = [locations lastObject];
    NSDate* eventDate = location.timestamp;
    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    if (abs(howRecent) < 15.0) {
        // If the event is recent, do something with it.
        NSLog(@"latitude %+.6f, longitude %+.6f\n",
              location.coordinate.latitude,
              location.coordinate.longitude);
    }
}


@end
