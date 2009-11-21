//
//  SimpleTwitterClientAppDelegate.m
//  SimpleTwitterClient
//
//  Created by Hanjo Meyer-Rieke on 14.11.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "SimpleTwitterClientAppDelegate.h"
#import "RootViewController.h"


@implementation SimpleTwitterClientAppDelegate

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

