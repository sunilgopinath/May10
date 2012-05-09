//
//  MainView.h
//  May10
//
//  Created by Sunil Gopinath on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MainViewController;

@interface MainView : UILabel {
	MainViewController *mainViewController;
}

- (id) initWithFrame: (CGRect) frame controller: (MainViewController *) c;

@end
