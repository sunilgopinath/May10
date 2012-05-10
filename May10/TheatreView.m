//
//  TheatreView.m
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheatreView.h"
#import "TheatreViewController.h"
#import "TheatreResultView.h"
#import "MusicAnswers.h"

@implementation TheatreView

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

- (id) initWithFrame: (CGRect) frame controller: (TheatreViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		self.editable = NO;	//Don't pop up a keyboard.
		self.font = [UIFont fontWithName: @"Georgia" size: 14]; //monospace
		viewController = c;
        
        CGRect b = self.bounds;
        
        if(c.title == @"Result") {
            srand(time(NULL));
            int random = rand() % 2;
            NSLog(@"random = %d", random);
            CGRect f = CGRectMake(0,
                                  0,
                                  b.size.width,
                                  b.size.height
                                  );
            littleView = [[TheatreResultView alloc] initWithFrame: f result: [c.model.theatreResult objectAtIndex: random] image:[c.model.theatreResultImage objectAtIndex:random]];
            [self addSubview: littleView];
        } else {
            //Add some buttons to the screen
            buttonA = [UIButton buttonWithType: UIButtonTypeRoundedRect];
            
            CGSize s = CGSizeMake(200, 40);	//size of button
            buttonA.frame = CGRectMake(
                                       b.origin.x + (b.size.width - s.width) / 2,
                                       b.origin.y + (b.size.height - s.height) / 4,
                                       s.width,
                                       s.height
                                       );
            
            [buttonA setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
            [buttonA setTitle: c.answerA forState: UIControlStateNormal];
            
            [buttonA addTarget: self
                        action: @selector(touchUpInside:)
              forControlEvents: UIControlEventTouchUpInside
             ];
            
            
            buttonB = [UIButton buttonWithType: UIButtonTypeRoundedRect];
            buttonB.frame = CGRectMake(
                                       b.origin.x + (b.size.width - s.width) / 2,
                                       2*(b.origin.y + (b.size.height - s.height)) / 4,
                                       s.width,
                                       s.height
                                       );
            
            [buttonB setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
            [buttonB setTitle: c.answerB forState: UIControlStateNormal];
            
            [buttonB addTarget: self
                        action: @selector(touchUpInside:)
              forControlEvents: UIControlEventTouchUpInside
             ];
            if(c.answerA != @"") {
                [self addSubview: buttonA];
                [self addSubview: buttonB];
            } else {
                letsGo = [UIButton buttonWithType: UIButtonTypeRoundedRect];
                letsGo.frame = CGRectMake(
                                          b.origin.x + (b.size.width - s.width) / 2,
                                          b.origin.y + (b.size.height - s.height) / 2,
                                          s.width,
                                          s.height
                                          );
                
                [letsGo setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
                [letsGo setTitle: @"Lets Go" forState: UIControlStateNormal];
                
                [letsGo addTarget: self
                           action: @selector(touchUpInside:)
                 forControlEvents: UIControlEventTouchUpInside
                 ];
                [self addSubview: letsGo];
            }
        }
        


	}
	return self;
}

- (void) touchUpInside: (id) sender {
    [viewController touchUpInside:sender];
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
