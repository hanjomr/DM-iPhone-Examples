//
//  TwitterClientAppDelegate.h
//  TwitterClient
//
//  Created by Hanjo Meyer-Rieke on 21.11.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

@interface TwitterClientAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

