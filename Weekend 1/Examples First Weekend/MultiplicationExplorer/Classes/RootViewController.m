#import "RootViewController.h"
#import "MultiplicationController.h"


@implementation RootViewController

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
	
    cell.textLabel.text = [NSString stringWithFormat:@"%d",indexPath.row + 1];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	MultiplicationController * mController = [[MultiplicationController alloc] initWithBaseValue:indexPath.row + 1];
	[self.navigationController pushViewController:mController animated:YES];
	[mController release];
}

- (void)dealloc {
    [super dealloc];
}


@end

