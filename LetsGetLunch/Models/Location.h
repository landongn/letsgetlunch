//
//  Location.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/21/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface Location : NSObject <NSCoding, NSKeyedArchiverDelegate, NSKeyedUnarchiverDelegate, MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D latlong;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *ratings;
@property (nonatomic, strong) NSDictionary *address;
@property (nonatomic, strong) NSNumber *timesVisited;

- (id) initWithMapData:(MKMapItem *)mapData;

@end
