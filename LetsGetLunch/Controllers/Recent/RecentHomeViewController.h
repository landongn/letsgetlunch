//
//  RecentHomeViewController.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/19/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecentService.h"

@interface RecentHomeViewController : UIViewController <NSCoding, UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *RecentTableView;
@property (strong, nonatomic) NSMutableArray *recentContacts;

@property (nonatomic) uint count;
@end
