//
//  TweeterAppDelegate.h
//  Tweeter
//
//  Created by Hanjo Meyer-Rieke on 15.11.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TweeterViewController;

@interface TweeterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TweeterViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TweeterViewController *viewController;

@end

