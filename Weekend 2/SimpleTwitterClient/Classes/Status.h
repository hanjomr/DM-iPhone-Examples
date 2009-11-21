#import <Foundation/Foundation.h>


@interface Status : NSObject {
	NSString *text;
}

+ (NSArray*) currentStatuus;

@property (nonatomic, retain) NSString *text;
@end
