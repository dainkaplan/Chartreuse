//
//  PieChartViewExampleViewController.m
//  PieChartViewExample
//
//  Created by Dain on 7/29/10.
//  Copyright Dain Kaplan 2010. All rights reserved.
//

#import "PieChartViewExampleViewController.h"
#import "PieChartView.h"

@implementation PieChartViewExampleViewController

@synthesize pieChart = _pieChart;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


- (void)viewDidLoad {
    [super viewDidLoad];
	
	[_pieChart clearItems];
	
	[_pieChart setGradientFillStart:0.3 andEnd:1.0];
	[_pieChart setGradientFillColor:PieChartItemColorMake(0.0, 0.0, 0.0, 0.7)];
	
	[_pieChart addItemValue:0.4 withColor:PieChartItemColorMake(1.0, 0.5, 1.0, 0.8)];
	[_pieChart addItemValue:0.3 withColor:PieChartItemColorMake(0.5, 1.0, 0.5, 0.8)];
	
	[_pieChart addItemValue:0.3 withColor:PieChartItemColorMake(0.5, 0.5, 1.0, 0.8)];

	_pieChart.alpha = 0.0;
	[_pieChart setHidden:NO];
	[_pieChart setNeedsDisplay];
	
	// Animate the fade-in
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.5];
	_pieChart.alpha = 1.0;
	[UIView commitAnimations];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
