//
//  SimpleTwitterClientAppDelegate.h
//  SimpleTwitterClient
//
//  Created by Hanjo Meyer-Rieke on 14.11.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

@interface SimpleTwitterClientAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

