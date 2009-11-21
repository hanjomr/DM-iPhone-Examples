//
//  CurrencyConverterAppDelegate.m
//  CurrencyConverter
//
//  Created by Hanjo Meyer-Rieke on 11.10.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "CurrencyConverterAppDelegate.h"
#import "CurrencyConverterViewController.h"

@implementation CurrencyConverterAppDelegate

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
