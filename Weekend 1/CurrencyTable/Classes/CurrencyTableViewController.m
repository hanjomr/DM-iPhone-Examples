#import "CurrencyTableViewController.h"
#import "Money.h"

@implementation CurrencyTableViewController

- (void)loadView {
	self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
	NSArray *baseValues = [NSArray arrayWithObjects:
						   [NSNumber numberWithInt:1],
						   [NSNumber numberWithInt:2],
						   [NSNumber numberWithInt:5],
						   [NSNumber numberWithInt:10],
						   [NSNumber numberWithInt:15],
						   [NSNumber numberWithInt:20],
						   [NSNumber numberWithInt:25],
						   nil];
	int j = 1;
	for (NSNumber *n in baseValues) {
		int i = [n intValue];
		Money *money = [[Money alloc] initWithAmountInEurCents:i * 100];
		UILabel *moneyLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 30 * j, 200, 30)];
		j++;
		float euro = [money valueInEur];
		float pound = [money valueInGBP];
		moneyLabel.text = [NSString stringWithFormat:@"%.2f EUR = %.2f GBP", euro, pound];
		[self.view addSubview:moneyLabel];

		[moneyLabel release];
		[money release];
	}
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [super dealloc];
}

@end
