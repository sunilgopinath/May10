//
//  BookView.h
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BookViewController;

@interface BookView : UITextView {
	BookViewController *viewController;
}

- (id) initWithFrame: (CGRect) frame controller: (BookViewController *) c;



@end
