#import <UIKit/UIKit.h>

@class CurrencyConverterViewController;

@interface CurrencyConverterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CurrencyConverterViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CurrencyConverterViewController *viewController;

@end

