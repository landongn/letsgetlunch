//
//  MainTabViewBG.h
//  LetsGetLunch
//
//  Created by Landon Noss on 7/22/13.
//  Copyright (c) 2013 RED Interactive Agency. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LGLTab.h"
#import "LGLTabBar.h"

@protocol LGLTabBarDelegate;

@interface MainTabViewBG : UIView

- (void) setSelectedTab: (LGLTab *) tab animated:(BOOL)animated;

@property (nonatomic, strong) NSArray *tabs;
@property (nonatomic, strong) LGLTab *currentTab;
@property (nonatomic, assign) id <LGLTabBarDelegate> delegate;

@end

@protocol LGLTabBarDelegate
- (void) tabBar:(LGLTabBar *)tabBar didSelectTabAtIndex:(NSInteger)index;
@end