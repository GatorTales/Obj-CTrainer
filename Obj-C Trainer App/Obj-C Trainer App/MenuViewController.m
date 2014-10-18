//
//  MenuViewController.m
//  Obj-C Trainer App
//
//  Created by Brad Fallon on 10/16/14.
//  Copyright (c) 2014 com.bradfallon. All rights reserved.
//

#import "MenuViewController.h"
#import "SWRevealViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
		// Custom initialization
	}
	return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	[self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
	
	// Set self as the data source and delegate for the table view
	self.tableView.delegate = self;
	self.tableView.dataSource = self;
	
	// Fetch the menu items
	self.menuItems = [[[MenuModel alloc] init] getMenuItems];
	
	
	
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
	return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSString *cellIdentifier = @"MenuItemCell";
	UITableViewCell *menuCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	
	// Get the menu item it's asking for
	MenuItem *item = [[MenuItem alloc] init];
	item = self.menuItems[indexPath.row];
	
	// Set menu item text and icon
	menuCell.textLabel.text = item.menuTitle;
	
	return menuCell;
	
}


@end
