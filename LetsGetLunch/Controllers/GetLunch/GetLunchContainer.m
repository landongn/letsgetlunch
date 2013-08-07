//
//  GetLunchContainer.m
//  LetsGetLunch
//
//  Created by Landon Noss on 8/5/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#define handle_tap(view, delegate, selector) do {\
view.userInteractionEnabled = YES;\
[view addGestureRecognizer: [[UITapGestureRecognizer alloc] initWithTarget:delegate action:selector]];\
} while(0)

#import "GetLunchContainer.h"

@interface GetLunchContainer ()

@end

@implementation GetLunchContainer


- (id) initWithRouterParams:(NSDictionary *)params {
    
    if (!self) {
        self = [super initWithNibName:nil bundle:nil];
        // Custom initialization
        _searchLocations = [NSMutableArray array];
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 32, [UIScreen mainScreen].bounds.size.width-64, [UIScreen mainScreen].bounds.size.height-(20+32))];
    
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    //set the region to the persons location
    
    BOOL locationEnabled = [CLLocationManager locationServicesEnabled];
    
    if(!locationEnabled) {
        UIAlertView *locationmessage = [[UIAlertView alloc] initWithTitle:@"Error Getting Location" message:@"Looks like location services are unavailable or disabled. Mind turning them on and trying again?" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [locationmessage show];
    } else {
        _locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
        _locationManager.distanceFilter = 500;
        [_locationManager startUpdatingLocation];
    }
    
    _searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-64, 32)];
    
    _searchBar.delegate = self;
    _mapView.delegate = self;
    
    //add the little button that shows the search box again in upper right corner.
    
    _showSearchBoxAgain = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"06-magnify"]];
    
    _showSearchBoxAgain.alpha = 0.0f;
    
    _showSearchBoxAgain.frame = CGRectMake(10, 5, _showSearchBoxAgain.image.size.height, _showSearchBoxAgain.image.size.width);
    
    handle_tap(_showSearchBoxAgain, self, @selector(onShowSearchAgain:));
    
    [self.view addSubview:_mapView];
    [self.view addSubview:_searchBar];
    [self.view addSubview:_showSearchBoxAgain];
    
    _mapView.showsUserLocation = YES;
    
    [_searchBar setBarStyle:UIBarStyleBlackTranslucent];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) hideKeyboard {
    for (UIView *v in self.view.subviews) {
        [v resignFirstResponder];
    }
}


- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UIView *v in self.view.subviews) {
        [v resignFirstResponder];
    }
}

#pragma mark UISearchBarDelegate
- (void) searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
}

- (void) searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self hideKeyboard];
    [UIView animateWithDuration:0.3f animations:^{
        _searchBar.alpha = 0.0;
        _mapView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-64, [UIScreen mainScreen].bounds.size.height);
        _showSearchBoxAgain.alpha = 1.0f;
    }];
    MKLocalSearchRequest *request = [[MKLocalSearchRequest alloc] init];
    request.naturalLanguageQuery = searchBar.text;
    request.region = _mapView.region;
    _recentLocalSearchRequest = [[MKLocalSearch alloc] initWithRequest:request];
    for (MKMapItem *item in _searchLocations) {
        [_mapView removeAnnotation:item.placemark];
    }
    [_recentLocalSearchRequest startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error) {
        NSLog(@"map items: %@", response.mapItems);
        for (MKMapItem *item in response.mapItems) {
            [_searchLocations addObject:item];
            [_mapView addAnnotation:item.placemark];

        }
        
        
    }];
}

#pragma mark MKAnnotationView

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    return nil;
}



#pragma mark CLLocationManagerDelegate methods

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations {
    // If it's a relatively recent event, turn off updates to save power
    CLLocation* location = [locations lastObject];
    NSDate* eventDate = location.timestamp;
    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    if (abs(howRecent) < 15.0) {
        _currentLocation = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude);
        _currentRegion = MKCoordinateRegionMake(_currentLocation, MKCoordinateSpanMake(0.01f, 0.01f));
        [_mapView setRegion:_currentRegion animated:YES];
        [_locationManager stopUpdatingLocation];
    }
}

#pragma mark Custom Protocol Behaviors

- (void) onShowSearchAgain:(UIGestureRecognizer *)gesture {
    [UIView animateWithDuration:0.3f animations:^{
        _searchBar.alpha = 1.0;
        _mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 32, [UIScreen mainScreen].bounds.size.width-64, [UIScreen mainScreen].bounds.size.height-(20+32))];
        _showSearchBoxAgain.alpha = 0.0f;
    }];
}

@end
