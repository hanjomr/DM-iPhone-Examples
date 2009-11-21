#import "MultiViewViewController.h"
#import "SecondViewController.h"

@implementation MultiViewViewController

- (IBAction)simpleDialog:(id)sender{
	UIAlertView *alert = [[UIAlertView alloc] 
						  initWithTitle:@"Oh No" 
						  message:@"Something went wrong" 
						  delegate:self 
						  cancelButtonTitle:@"fix it" 
						  otherButtonTitles:@"No", @"panic", nil];
	[alert show];
}

- (void)alertView:(UIAlertView *)alertView 
clickedButtonAtIndex:(NSInteger)buttonIndex {
	NSLog(@"Button %d was clicked",buttonIndex);
}

- (void)actionSheet:(UIActionSheet *)actionSheet 
clickedButtonAtIndex:(NSInteger)buttonIndex{
	NSLog(@"Button %d was clicked",buttonIndex);
}

- (IBAction)newView:(id)sender{
	SecondViewController *otherViewController = [[SecondViewController alloc] init];
	[self presentModalViewController:otherViewController animated:YES];
}






- (IBAction)actionSheet:(id)sender{
	UIActionSheet *sheet = [[UIActionSheet alloc] 
							initWithTitle:@"what To do" 
							delegate:self 
							cancelButtonTitle:@"cancel" 
							destructiveButtonTitle:nil
							otherButtonTitles:@"dont know", nil];

	[sheet showInView:self.view];
}





/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
