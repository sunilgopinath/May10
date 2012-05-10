//
//  HelpView.h
//  May10
//
//  Created by Sunil Gopinath on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HelpViewController;

@interface HelpView : UILabel {
	HelpViewController *modalViewController;
}

- (id) initWithFrame: (CGRect) frame controller: (HelpViewController *) c;

@end
