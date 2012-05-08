//
//  View.m
//  May10
//
//  Created by Sunil Gopinath on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

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

- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor =
        [UIColor colorWithRed: (CGFloat)rand() / RAND_MAX
                        green: (CGFloat)rand() / RAND_MAX
                         blue: 1.0
                        alpha: 1.0
         ];
		self.font = [UIFont fontWithName: @"Courier" size: 16];
		self.editable = NO;
		viewController = c;
	}
	return self;
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	self.text = [[viewController title] stringByAppendingString: @"\n"];
	
	for (UIView *v = self; v != nil; v = v.superview) {
		self.text = [self.text stringByAppendingFormat:
                     @"%@\n"
                     @"frame  (%g, %2g), %g × %g\n"
                     @"bounds (%g, %2g), %g × %g\n",
                     NSStringFromClass(v.class),
                     v.frame.origin.x,  v.frame.origin.y,  v.frame.size.width,  v.frame.size.height,
                     v.bounds.origin.x, v.bounds.origin.y, v.bounds.size.width, v.bounds.size.height
                     ];
	}
}
@end
