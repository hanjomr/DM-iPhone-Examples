#import <Foundation/Foundation.h>


@interface Money : NSObject {
	int amountInEurCent;
	float conversionRate;
}

- (id)initWithAmountInEurCents:(int)amount;

- (float)valueInEur;
- (float)valueInGBP;

@end

