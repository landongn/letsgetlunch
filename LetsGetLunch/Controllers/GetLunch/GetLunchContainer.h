//
//  GetLunchContainer.h
//  LetsGetLunch
//
//  Created by Landon Noss on 8/5/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Routable/Routable.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Location.h"

@interface GetLunchContainer : UIViewController <UISearchBarDelegate, MKMapViewDelegate, CLLocationManagerDelegate>

@property (nonatomic, strong) MKMapView *mapView;
@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic) float spanRange;
@property (nonatomic) MKCoordinateRegion currentRegion;
@property (nonatomic) CLLocationCoordinate2D currentLocation;

@property (nonatomic, strong) MKLocalSearch *recentLocalSearchRequest;
@property (nonatomic, strong) NSString *recentSearchQuery;
@property (nonatomic, strong) UIImageView *showSearchBoxAgain;
@property (nonatomic, strong) NSMutableArray *searchLocations;
@end
