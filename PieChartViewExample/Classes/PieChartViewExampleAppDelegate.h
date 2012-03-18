//
//  PieChartViewExampleAppDelegate.h
//  PieChartViewExample
//
//  Created by Dain on 7/29/10.
//  Copyright Dain Kaplan 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PieChartViewExampleViewController;

@interface PieChartViewExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PieChartViewExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PieChartViewExampleViewController *viewController;

@end

