//
//  AppDelegate.m
//  TableView2
//
//  Created by svp on 03.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "Parser.h"
#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize navigationController = _navigationController;
@synthesize viewController=_viewController;
@synthesize listArray;

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
      
    NSURL *url=[[NSURL alloc]initWithString:@"http://ielmo.xtreemhost.com/Prices.xml"];
    NSData *data=[[NSData alloc]initWithContentsOfURL:url];
    
   // NSString *filePach=[[NSBundle mainBundle]pathForResource:@"Prices.xml" ofType:nil];
   // NSData *data=[NSData dataWithContentsOfFile:filePach];
    
    NSXMLParser *xmlParser=[[NSXMLParser alloc]initWithData:data];
    Parser *theParser=[[Parser alloc]initParser];
    [xmlParser setDelegate:theParser];
    [xmlParser parse];
        BOOL worked=[xmlParser parse];
        if (worked) {
        NSLog(@"Allok %i",[listArray count]);
    }
    else
        NSLog(@"Boo");
    
    
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];

    self.navigationController = [[[UINavigationController alloc] initWithRootViewController:self.viewController] autorelease];
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}




- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
