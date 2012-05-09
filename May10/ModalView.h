//
//  ModalView.h
//  May10
//
//  Created by Sunil Gopinath on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ModalViewController;

@interface ModalView : UILabel {
	ModalViewController *modalViewController;
}

- (id) initWithFrame: (CGRect) frame controller: (ModalViewController *) c;

@end
