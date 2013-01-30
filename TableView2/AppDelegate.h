//
//  AppDelegate.h
//  TableView2
//
//  Created by svp on 03.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) NSMutableArray *listArray;
@property (strong, nonatomic) ViewController *viewController;

@end
