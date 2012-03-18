//
//  PieChart.h
//
//  Created by Dain on 7/23/10.
//  Copyright 2010 Dain Kaplan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef struct {
	float red;
	float green;
	float blue;
	float alpha;
} PieChartItemColor;

CG_INLINE PieChartItemColor
PieChartItemColorMake(float r, float g, float b, float a)
{
	PieChartItemColor c; c.red = r; c.green = g; c.blue = b; c.alpha = a; return c;
}

@interface PieChartView : UIView {	
	NSMutableArray *_pieItems;
	float _sum;
	PieChartItemColor _noDataFillColor;
	PieChartItemColor _gradientFillColor;
	
	float _gradientStart;
	float _gradientEnd;
}

- (void)clearItems;
- (void)addItemValue:(float)value withColor:(PieChartItemColor)color;
- (void)setNoDataFillColorRed:(float)r green:(float)g blue:(float)b;
- (void)setNoDataFillColor:(PieChartItemColor)color;
- (void)setGradientFillColorRed:(float)r green:(float)g blue:(float)b;
- (void)setGradientFillColor:(PieChartItemColor)color;

// Values ranging from 0.0-1.0 specifying where to begin/end the fills. 
// E.g. A start of 0.0 starts at the top of the piechart, and 0.3 starts a third of the way from the top.
- (void)setGradientFillStart:(float)start andEnd:(float)end;

@end
