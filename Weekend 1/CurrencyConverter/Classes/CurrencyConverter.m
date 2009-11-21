#import "CurrencyConverter.h"


@implementation CurrencyConverter
- (id) initWithConversionRate:(float) rate{
	self = [super init];
	if (self != nil) {
		conversionRate = rate;
	}
	return self;
}

- (float) convert:(float)base {
	
	return base * conversionRate;
}

@end
