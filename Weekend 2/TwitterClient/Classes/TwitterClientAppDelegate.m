//
//  TwitterClientAppDelegate.m
//  TwitterClient
//
//  Created by Hanjo Meyer-Rieke on 21.11.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TwitterClientAppDelegate.h"
#import "RootViewController.h"


@implementation TwitterClientAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

