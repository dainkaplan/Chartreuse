//
//  PieChartViewExampleViewController.h
//  PieChartViewExample
//
//  Created by Dain on 7/29/10.
//  Copyright Dain Kaplan 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PieChartView;

@interface PieChartViewExampleViewController : UIViewController {
	PieChartView *_pieChart;
}

@property (nonatomic, retain) IBOutlet PieChartView *pieChart;

@end

