#import "TapCounterViewController.h"

@implementation TapCounterViewController
@synthesize counter,counterLabel,secondLabel;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	int tapCount = [touches count];
	counter += tapCount;
	counterLabel.text = [NSString stringWithFormat:@"Counted taps: %d",counter];
}

- (void)clearCounter:(id)other{
	counter = 0;
	counterLabel.text = [NSString stringWithFormat:@"Counted taps: %d",counter];
}

- (void)dealloc {
	[counterLabel release];
    [super dealloc];
}

@end
