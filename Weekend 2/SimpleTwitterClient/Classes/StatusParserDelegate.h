#import <Foundation/Foundation.h>

@class Status;
@interface StatusParserDelegate : NSObject {
	NSMutableArray *statuus;
	NSString *currentElement;
	NSMutableString *currentCharacterData;
	Status *currentStatus;

	

	
}
static NSString * const kStatus = @"status";
static NSString * const kText = @"text";

@property (retain,nonatomic) NSString *currentElement;
@property (nonatomic, retain) NSMutableArray *statuus;
@end
