//
//  ClassText.h
//  TableView2
//
//  Created by svp on 03.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "List.h"

@interface ClassText : UIViewController
{
    //IBOutlet UILabel *textLabel;
   // NSString *str1;
    IBOutlet UILabel *name;
    IBOutlet UILabel *beer;
    IBOutlet UILabel *cider;
    IBOutlet UILabel *guinness;

}
//@property (retain, nonatomic) IBOutlet UILabel *textLabel;
//@property (retain,nonatomic) NSString *str1;
@property (nonatomic,retain) List *theList;
@end
