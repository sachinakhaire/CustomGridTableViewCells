//
//  tableViewController.m
//  GridTableView
//  SachinKhaire
//  Created by Mac on 18/10/16.
//  Copyright © 2016 Home. All rights reserved.
//

#import "tableViewController.h"
#import "customGridTableViewCell.h"
#import "QuartzCore/QuartzCore.h"


@interface tableViewController ()

@end

@implementation tableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Turn off the tableView's default lines because we are drawing them all ourself
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.layer.borderWidth = 2.0;
    self.tableView.layer.borderColor = [UIColor blackColor].CGColor;
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 82;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    customGridTableViewCell *cell = (customGridTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[customGridTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.lineColor = [UIColor blackColor];
    }
    
    if (indexPath.row == 0) {
        UIView *topLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 3)];
        UIView *bottomLineView = [[UIView alloc] initWithFrame:CGRectMake(0, cell.bounds.size.height, self.view.bounds.size.width, 3)];
        bottomLineView.backgroundColor = [UIColor blackColor];
        [cell.contentView addSubview:bottomLineView];

        topLineView.backgroundColor = [UIColor blackColor];
        [cell.contentView addSubview:topLineView];
    }
    else if (!indexPath == 0)
    {
       
        UIView *topLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 1)];
        UIView *bottomLineView = [[UIView alloc] initWithFrame:CGRectMake(0, cell.bounds.size.height, self.view.bounds.size.width, 1)];
        bottomLineView.backgroundColor = [UIColor grayColor];
        [cell.contentView addSubview:bottomLineView];

        topLineView.backgroundColor = [UIColor grayColor];
        [cell.contentView addSubview:topLineView];
        
    }
    
    UIView *bottomLineView = [[UIView alloc] initWithFrame:CGRectMake(0, cell.bounds.size.height, self.view.bounds.size.width, 1)];
    bottomLineView.backgroundColor = [UIColor grayColor];
    [cell.contentView addSubview:bottomLineView];
    
    // we can draw the line on the top
    if (indexPath.row == 0)
        cell.topCell = YES;
    else
        cell.topCell = NO;
    
    // Configure the cell.
    cell.cell1.text = [NSString stringWithFormat:@"%li", (long)indexPath.row];
    cell.cell2.text = [NSString stringWithFormat:@"%li", (long)indexPath.row];
    cell.cell3.text = @"Sample text";
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}




@end
