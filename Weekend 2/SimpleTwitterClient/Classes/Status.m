#import "Status.h"
#import "StatusParserDelegate.h"

@implementation Status
@synthesize text;

+ (NSArray*) currentStatuus{
	NSURL *url = [NSURL URLWithString:@"http://twitter.com/statuses/public_timeline.xml"];
	NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	StatusParserDelegate *delegate =[[[StatusParserDelegate alloc] init] retain];
	[parser setDelegate:delegate];
	[parser parse];
	NSArray *result = [delegate.statuus autorelease];
	//[delegate release];
	//[parser release];
	return result;
}

@end
