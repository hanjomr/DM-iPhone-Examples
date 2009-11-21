//
//  MoneyAppDelegate.m
//  Money
//
//  Created by Hanjo Meyer-Rieke on 19.10.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MoneyAppDelegate.h"
#import "MoneyViewController.h"

@implementation MoneyAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
