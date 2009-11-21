#import <UIKit/UIKit.h>

@class CurrencyTableViewController;

@interface CurrencyTableAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CurrencyTableViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CurrencyTableViewController *viewController;

@end

