//
//  MoneyAppDelegate.h
//  Money
//
//  Created by Hanjo Meyer-Rieke on 19.10.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MoneyViewController;

@interface MoneyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MoneyViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MoneyViewController *viewController;

@end

