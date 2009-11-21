#import "TweeterViewController.h"

@implementation TweeterViewController


- (IBAction)tweet:(id)sender{
	NSString *tweet = [NSString stringWithFormat:@"status=%@",tweetInput.text];
	NSLog(@"Tweeting:%@",tweet);
	
	NSURL* url = [[NSURL alloc] initWithString:@"http://twitter.com/statuses/update.xml"];

	NSData* requestData = [tweet dataUsingEncoding:NSUTF8StringEncoding];
	NSString* requestDataLengthString = [[NSString alloc] initWithFormat:@"%d", [requestData length]];
	
	NSMutableURLRequest* request = [[NSMutableURLRequest alloc] initWithURL:url];
	[request setHTTPMethod:@"POST"];
	[request setHTTPBody:requestData];
	[request setValue:requestDataLengthString forHTTPHeaderField:@"Content-Length"];
	[request setTimeoutInterval:30.0];
	[url release];
	
	[requestDataLengthString release];
	
	NSURLConnection *theConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];      
	[request release];
	if (theConnection) {
		
		receivedData=[[NSMutableData data] retain];
		
	} else {
		
		NSLog(@"conncetion failed");
		
	}
	
}

-(void)connection:(NSURLConnection *)connection 
didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
	if ([challenge previousFailureCount] == 0) {
		NSURLCredential *newCredential;
		newCredential=[NSURLCredential credentialWithUser:@"hanjotest" password:@"geheim123" persistence:NSURLCredentialPersistenceNone];
		[[challenge sender] useCredential:newCredential forAuthenticationChallenge:challenge];
	} else {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
		NSLog(@"autherror");
	}
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
	[receivedData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [receivedData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    [connection release];
    [receivedData release];
    NSLog(@"Connection failed! Error - %@ %@", [error localizedDescription],[[error userInfo] objectForKey:NSErrorFailingURLStringKey]);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Succeeded! Received %d bytes of data: %@",[receivedData length], [[NSString alloc] initWithData:receivedData encoding:NSUTF8StringEncoding] );
	[connection release];
    [receivedData release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    [super dealloc];
}

@end
