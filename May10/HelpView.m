//
//  HelpView.m
//  May10
//
//  Created by Sunil Gopinath on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HelpView.h"
#import "HelpViewController.h"

@implementation HelpView

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

- (id) initWithFrame: (CGRect) frame controller: (HelpViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor orangeColor];
		self.textAlignment = UITextAlignmentCenter;
		self.text = @"ModalView";
		self.userInteractionEnabled = YES;
		modalViewController = c;
        
        UITextView *textView = [[UITextView alloc] initWithFrame: self.bounds];
		textView.backgroundColor = [UIColor whiteColor];
		textView.textColor = [UIColor blackColor];
		textView.font = [UIFont fontWithName: @"Georgia" size: 15.75];
		textView.editable = NO;	//Don't pop up a keyboard.
		
		textView.text =
        @"Cary Grant,\n"
        @"James Stewart,\n"
        @"Katherine Hepburn,\n\n"
        @"Come on, you know this!\n\n";
        
		[self addSubview: textView];
        
	}
	return self;
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
