#import "Money.h"


@implementation Money

- (id) initWithAmountInEurCents:(int)amount
{
	self = [super init];
	if (self != nil) {
		amountInEurCent = amount;
		conversionRate = 1.5f;
	}
	return self;
}

- (float) valueInEur{
	return (float)amountInEurCent / 100;
}

- (float) valueInGBP{
	return [self valueInEur] * conversionRate;
}

@end
