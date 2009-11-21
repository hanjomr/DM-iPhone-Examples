//
//  RandomPasswordGeneratorAppDelegate.h
//  RandomPasswordGenerator
//
//  Created by Hanjo Meyer-Rieke on 24.10.09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RandomPasswordGeneratorViewController;

@interface RandomPasswordGeneratorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RandomPasswordGeneratorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RandomPasswordGeneratorViewController *viewController;

@end

