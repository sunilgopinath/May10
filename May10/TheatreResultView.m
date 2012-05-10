//
//  TheatreResultView.m
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheatreResultView.h"

@implementation TheatreResultView

- (id) initWithFrame: (CGRect)frame result: (NSString *) result image: (NSString *) image
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:image]];
		NSString *string = result;
		UIFont *font = [UIFont systemFontOfSize: 16];
		CGSize size = [result sizeWithFont: font];
        
		//Put upper left corner of label in upper left corner of View.
		//Make label just big enough to hold the string.
		CGRect f = CGRectMake(
                              0,
                              self.bounds.origin.y,
                              size.width,
                              size.height
                              );
        
		UILabel *label = [[UILabel alloc] initWithFrame: f];
		label.backgroundColor = [UIColor clearColor];
		label.font = font;
		label.text = string;
        label.textColor = [UIColor redColor];
		[self addSubview: label];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
/* An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 20];
    [@"Hello!" drawAtPoint: CGPointZero withFont: font];
}
*/
@end
