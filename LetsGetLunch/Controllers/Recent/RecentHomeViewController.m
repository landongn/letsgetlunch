//
//  RecentHomeViewController.m
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import "RecentHomeViewController.h"

#define kArchiveLocation = "recent/datasource"

@interface RecentHomeViewController () {

}

@end

@implementation RecentHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

#pragma mark - NSCoding

- (id) initWithCoder:(NSCoder *)decoder {
    self = [super initWithNibName:nil bundle:nil];
    if(!self){
        return nil;
    }
    
    _recentContacts = [decoder decodeObjectForKey:@"datasource"];
    _count = [decoder decodeInt32ForKey:@"count"];
    
    _RecentTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _RecentTableView.delegate = self;
    _RecentTableView.dataSource = self;
    
    return self;
}

- (void) encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_recentContacts forKey:@"datasource"];
    [encoder encodeInt32:_count forKey:@"count"];
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.view addSubview:_RecentTableView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [[UITableViewCell alloc] init];
}

- (int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _count;
}

@end
