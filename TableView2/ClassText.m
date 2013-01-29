//
//  ClassText.m
//  TableView2
//
//  Created by svp on 03.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ClassText.h"

@implementation ClassText
//@synthesize textLabel;
//@synthesize str1;
@synthesize theList;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
  //  textLabel.text=str1;
    [super viewDidLoad];
    
    self.title=theList.name;
    name.text=theList.name;
    beer.text=theList.beer;
    cider.text=theList.cider;
    guinness.text=theList.guinness;
    
    // Do any additional setup after loading the view from its nib.
}
/*
- (void)viewDidUnload
{
    [self setTextLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
*/
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    //[textLabel release];
    [super dealloc];
}
@end
