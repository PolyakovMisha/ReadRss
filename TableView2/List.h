//
//  List.h
//  TableView2
//
//  Created by svp on 06.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface List : NSObject

@property(nonatomic,retain) NSString *name;
@property(nonatomic,retain) NSString *beer;
@property(nonatomic,retain) NSString *cider;
@property(nonatomic,retain) NSString *guinness;
@property(nonatomic,readwrite) NSInteger drinkID;
    


@end
