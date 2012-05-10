//
//  TheatreView.h
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TheatreViewController;
@class TheatreResultView;

@interface TheatreView : UITextView {
	TheatreViewController *viewController;
    UIButton *buttonA;
    UIButton *buttonB;
    UIButton *letsGo;
    
    TheatreResultView *littleView;
}

- (id) initWithFrame: (CGRect) frame controller: (TheatreViewController *) c;

@end
