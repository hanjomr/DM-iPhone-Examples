//
//  TapCounterAppDelegate.h
//  TapCounter
//
//  Created by Hanjo Meyer-Rieke on 25.10.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TapCounterViewController;

@interface TapCounterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TapCounterViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TapCounterViewController *viewController;

@end

