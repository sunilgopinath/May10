//
//  MusicView.h
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MusicViewController;

@interface MusicView : UITextView {
	MusicViewController *viewController;
}

- (id) initWithFrame: (CGRect) frame controller: (MusicViewController *) c;


@end
