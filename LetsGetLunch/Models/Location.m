//
//  Location.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/21/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "Location.h"
#import <AddressBook/AddressBook.h>

@implementation Location

#pragma mark NSCoding

-(id) initWithCoder:(NSCoder *)decoder {
    
    if (!self) {
        self = [super init];
        //self.latlong = [decoder decodeCGPointForKey:@"latlong"];
        _name = [decoder decodeObjectForKey:@"name"];
        _ratings = [decoder decodeObjectForKey:@"ratings"];
        _address = [decoder decodeObjectForKey:@"address"];
        _timesVisited = [decoder decodeObjectForKey:@"visitedCount"];
    }
    return self;
}

- (void) encodeWithCoder:(NSCoder *)encoder {
//    [encoder encodeObject:self.latlong forKey:@"latlong"];
    [encoder encodeObject:_name forKey:@"name"];
    [encoder encodeObject:_ratings forKey:@"ratings"];
    [encoder encodeObject:_address forKey:@"address"];
    [encoder encodeObject:_timesVisited forKey:@"visitedCount"];
}

#pragma mark Initialization

- (id) init {
    if (!self) {
        self = [super init];
        
    }
    
    return self;
}

- (id) initWithMapData:(MKMapItem *)mapData {
    if (!self) {
        self = [super init];
        
        _latlong = CLLocationCoordinate2DMake(0, 0);
        _address = [[NSDictionary alloc] init];
        _name = [[NSString alloc] init];
        
        _latlong = mapData.placemark.location.coordinate;
        _name = mapData.name;
        _address = @{(NSString*)kABPersonAddressStreetKey: mapData.placemark.addressDictionary};

    }
    return self;
}

#pragma mark MKAnnotation protocol
- (NSString *)title {
    return _name;
}

- (NSString *)subtitle {
    return _name;
}

- (CLLocationCoordinate2D) coordinate {
    return _latlong;
}


@end
