#import "CurrencyConverterViewController.h"
#import "CurrencyConverter.h"

@implementation CurrencyConverterViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
	self.view.backgroundColor = [UIColor yellowColor];
	CurrencyConverter *converter = [[CurrencyConverter alloc] initWithConversionRate:1.5];
	for (int i = 1; i < 10; i++) {
		UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, i*50, 200, 80)];
		float convertedValue = [converter convert:(float)i];
		myLabel.text = [NSString stringWithFormat:@"%d Euro = %.2f $",i,convertedValue];
		myLabel.textAlignment = UITextAlignmentCenter;
		[self.view addSubview:myLabel]; 
	}
	
}


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
