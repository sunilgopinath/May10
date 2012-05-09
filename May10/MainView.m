//
//  MainView.m
//  May10
//
//  Created by Sunil Gopinath on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"
#import "MainViewController.h"

@implementation MainView

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

- (id) initWithFrame: (CGRect) frame controller: (MainViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		self.textAlignment = UITextAlignmentCenter;
		self.text = NSStringFromClass([self class]);
		self.userInteractionEnabled = YES; //Make it touch-sensitive.
		mainViewController = c;
	}
	return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	[mainViewController presentModalViewController];
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */
@end
