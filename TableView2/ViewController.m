//
//  ViewController.m
//  TableView2
//
//  Created by svp on 03.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ClassText.h"

@implementation ViewController
@synthesize myArray,app,theList;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Name";
    app=[[UIApplication sharedApplication]delegate];
    //[self.tableView reloadData];
    //myArray=[[NSArray alloc]initWithObjects:@"Misha",@"Pasha",@"Sasha", nil];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - TableView Data Source methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [app.listArray count];
   // return [myArray count]; 
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:@"name"];
    if (cell==nil)
    {
        cell= [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"name"];
    }
    theList=[app.listArray objectAtIndex:indexPath.row];
    cell.textLabel.text=theList.name;
   // cell.textLabel.text=[myArray objectAtIndex:indexPath.row];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ClassText *detailViewController = [[ClassText alloc] initWithNibName:@"ClassText" bundle:nil];
    theList=[app.listArray objectAtIndex:indexPath.row];
    detailViewController.theList=theList;
   // detailViewController.str1 = [myArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    
}








@end
