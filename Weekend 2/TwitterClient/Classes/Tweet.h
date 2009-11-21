#import <Foundation/Foundation.h>


@interface Tweet : NSObject {
	NSString *date;
	NSString *text;
	NSString *username;
}

@property (retain,nonatomic) NSString *date, *text,*username;

@end
