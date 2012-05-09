//
//  StationView.m
//  May10
//
//  Created by Sunil Gopinath on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StationView.h"

@implementation StationView

/*
 - (id) initWithFrame: (CGRect) frame
 {
 self = [super initWithFrame: frame];
 if (self) {
 // Initialization code
 }
 return self;
 }
 */

- (id) initWithFrame: (CGRect) frame controller: (StationViewController *) stationController {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		NSString *title = @"More info";
		[button setTitle: title forState: UIControlStateNormal];
		CGSize s = [title sizeWithFont: button.titleLabel.font];
		button.frame = CGRectMake(0, 0, s.width + 20, s.height + 10);
        
		//Put center of button at origin of StationView.
		button.center = CGPointZero;
        
		//Put origin of StationView at center of StationView.
		s = self.bounds.size;
		self.bounds = CGRectMake(-s.width / 2, -s.height / 2, s.width, s.height);
        
		[button addTarget: stationController
                   action: @selector(moreInfo)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button];
	}
	return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
