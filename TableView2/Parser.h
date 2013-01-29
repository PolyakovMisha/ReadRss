//
//  Parser.h
//  TableView2
//
//  Created by svp on 06.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "List.h"


@interface Parser : NSObject <NSXMLParserDelegate>

{
    AppDelegate *app;
    List *theList;
    NSMutableString *currentElementValue;
}

-(id)initParser;

@end
