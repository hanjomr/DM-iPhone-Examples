#import "TweetParserDelegate.h"
#import "Tweet.h"

@implementation TweetParserDelegate
@synthesize allTweets;

- (id) init{
	self = [super init];
	if (self != nil) {
		allTweets = [[NSMutableArray alloc] init];
	}
	return self;
}

- (void)parser:(NSXMLParser *)parser 
didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict{
	if ([@"status" isEqual:elementName]){
		currentTweet = [[Tweet alloc] init];
	}
	NSLog(@"found:%@",elementName);
}

- (void)parser:(NSXMLParser *)parser 
foundCharacters:(NSString *)string{
	if(currentCharacterData == nil){
		currentCharacterData = [[NSMutableString alloc] init];
	}
	[currentCharacterData appendString:string];
}

- (void)parser:(NSXMLParser *)parser 
 didEndElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qName {
	if ([@"date" isEqual:elementName]) {
		currentTweet.date = currentCharacterData;
	} else if ([@"text" isEqual:elementName]) {
		currentTweet.text = currentCharacterData;
	} else if ([@"name" isEqual:elementName]) {
		currentTweet.username = currentCharacterData;
	} else if([@"status" isEqual:elementName]){
		[allTweets addObject:currentTweet];
		[currentTweet release];
	}
	[currentCharacterData release];
	currentCharacterData = nil;
}
@end
