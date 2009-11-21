//
//  MultiplicationController.m
//  MultiplicationExplorer
//
//  Created by Hanjo Meyer-Rieke on 25.10.09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "MultiplicationController.h"


@implementation MultiplicationController

- (id)initWithBaseValue:(int)base{
	self = [super initWithNibName:@"MultiplicationController" bundle:nil];
	if (self != nil){
		baseValue = base;
	}
	return self;
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%d x %d = %d",baseValue,indexPath.row +1,baseValue * (indexPath.row+1)];
	
    return cell;
}


- (void)dealloc {
    [super dealloc];
}


@end

