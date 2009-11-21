#import <Foundation/Foundation.h>


@interface CurrencyConverter : NSObject {
	float conversionRate;
}
- (id) initWithConversionRate:(float) rate;
- (float) convert:(float)base;
@end
