//
//  MultiViewAppDelegate.m
//  MultiView
//
//  Created by Hanjo Meyer-Rieke on 21.11.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MultiViewAppDelegate.h"
#import "MultiViewViewController.h"

@implementation MultiViewAppDelegate

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
