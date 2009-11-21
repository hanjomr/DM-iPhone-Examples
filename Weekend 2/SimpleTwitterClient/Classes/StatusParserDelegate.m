#import "StatusParserDelegate.h"
#import "Status.h"

@implementation StatusParserDelegate

@synthesize currentElement,statuus;

- (id) init
{
	self = [super init];
	if (self != nil) {
		statuus = [[NSMutableArray arrayWithCapacity:20] retain];
	}
	return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
    namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict{
	NSLog(@"Start Element:%@",elementName);
	self.currentElement = elementName;
	currentCharacterData = [[NSMutableString alloc] init];
	if ([elementName isEqualToString:kStatus]){
		currentStatus = [[[Status alloc] init] retain];
	}
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
            [currentCharacterData appendString:string];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {     
    NSLog(@"end Element:%@",elementName);
	if ([elementName isEqualToString:kStatus]) {
		[statuus addObject:currentStatus];
		//[currentStatus release];
		currentStatus = nil;
	} else if ([elementName isEqualToString:kText]) {
		currentStatus.text = currentCharacterData;
		NSLog(@"current status Text:%@",currentCharacterData);
	}
	
	//[currentCharacterData release];
	currentCharacterData = nil;
}
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError {
    NSLog(@"Parse Error:%@",parseError);
}
	



@end
