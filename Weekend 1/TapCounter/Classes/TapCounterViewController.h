#import <UIKit/UIKit.h>

@interface TapCounterViewController : UIViewController {
	int counter;
	IBOutlet UILabel *counterLabel;
	IBOutlet UILabel *secondLabel;
	
}
-(IBAction)clearCounter:(id)other;

@property int counter;
@property (retain, nonatomic) UILabel *counterLabel,*secondLabel;

@end

