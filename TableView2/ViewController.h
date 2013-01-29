//
//  ViewController.h
//  TableView2
//
//  Created by svp on 03.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "List.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{
    NSArray * myArray;
}

@property(nonatomic,retain) NSArray *myArray;
@property(nonatomic,retain) AppDelegate *app;
@property(nonatomic,retain) List *theList;

@end
