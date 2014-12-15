//
//  ModelController.h
//  AppPaginacion
//
//  Created by JHONATAN ACELAS AREVALO on 4/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

