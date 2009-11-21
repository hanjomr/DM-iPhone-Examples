#import <UIKit/UIKit.h>

@interface TweeterViewController : UIViewController {
	IBOutlet UITextView *tweetInput;
	NSMutableData *receivedData;
}

- (IBAction)tweet:(id)sender;

@end

