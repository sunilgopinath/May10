//
//  MusicAnswerView.h
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicAnswerView : UIView <UITextFieldDelegate> {
	UITextField *textField;
	UILabel *label;
    UIImageView *imageView;
    NSString *ans;
}

- (id) initWithFrame: (CGRect) frame answer: (NSString *) answer;

@property (strong, nonatomic) NSString *ans;
@end
