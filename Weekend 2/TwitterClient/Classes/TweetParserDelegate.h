#import <Foundation/Foundation.h>

@class Tweet;
@interface TweetParserDelegate : NSObject {
	Tweet *currentTweet;
	NSMutableString *currentCharacterData;
	NSMutableArray *allTweets;
}

@property (readonly,nonatomic) NSMutableArray *allTweets;
@end
