//
//  MultiViewAppDelegate.h
//  MultiView
//
//  Created by Hanjo Meyer-Rieke on 21.11.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MultiViewViewController;

@interface MultiViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MultiViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MultiViewViewController *viewController;

@end

