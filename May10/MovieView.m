//
//  MovieView.m
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MovieView.h"
#import "MovieViewController.h"

@implementation MovieView

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

- (id) initWithFrame: (CGRect) frame controller: (MovieViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
        CGRect b = self.bounds;
        CGRect f = CGRectMake(
                              b.origin.x + (b.size.width - 250)/2,
                              b.origin.y + (b.size.height - 198) / 2,
                              250,
                              198
                              );
        UIImageView *imageView = [[UIImageView alloc] initWithFrame: f];
        imageView.image = [UIImage imageNamed:@"philadelphia.jpg"];
        [self addSubview: imageView];
        
		self.backgroundColor = [UIColor whiteColor];
		self.editable = NO;	//Don't pop up a keyboard.
		self.font = [UIFont fontWithName: @"Georgia" size: 14]; //monospace
		viewController = c;
        
        button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        CGSize s = CGSizeMake(200, 40);	//size of button
        button.frame = CGRectMake(
                                   b.origin.x + (b.size.width - s.width) / 2,
                                   b.origin.y + (b.size.height - 198) / 2 + (220),
                                   s.width,
                                   s.height
                                   );
        
        [button setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
        [button setTitle: @"Show me!" forState: UIControlStateNormal];
        [button addTarget: self
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
        [self addSubview:button];
        
        
		UIFont *font = [UIFont systemFontOfSize: 16];
		//Put upper left corner of label in upper left corner of View.
		//Make label just big enough to hold the string.
		f = CGRectMake(
                              b.origin.x + (b.size.width - s.width) / 2,
                              30,
                              s.width,
                              s.height
                              );
        
		label = [[UILabel alloc] initWithFrame: f];
		label.backgroundColor = [UIColor clearColor];
		label.font = font;
		
		[self addSubview: label];

	}
	return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	[viewController presentModalViewController];
}

- (void) touchUpInside: (id) sender {
    NSString *string = @"The Philadelphia Story";
    label.text = string;
    [button removeFromSuperview];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	// Drawing code
	self.text = [viewController.text stringByAppendingString: @"\n"];
    
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