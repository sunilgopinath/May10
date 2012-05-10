//
//  MusicAnswerView.m
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MusicAnswerView.h"

@implementation MusicAnswerView
@synthesize ans;
- (id) initWithFrame: (CGRect) frame answer: (NSString *) answer
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		UIFont *font = [UIFont systemFontOfSize: 24];
		CGFloat height = [@"A" sizeWithFont: font].height;
        self.ans = answer;
		//Center the UITextField in the TextFieldView.
		CGRect b = self.bounds;
        
		CGRect f = CGRectMake(
                              b.origin.x,
                              b.origin.y,
                              b.size.width,
                              height
                              );
        
		textField = [[UITextField alloc] initWithFrame: f];
		textField.borderStyle = UITextBorderStyleNone;	//default
		textField.backgroundColor = [UIColor yellowColor];
		textField.textColor = [UIColor blackColor];
        
		textField.clearButtonMode = UITextFieldViewModeAlways;
		textField.keyboardType = UIKeyboardTypeDefault;
		textField.returnKeyType = UIReturnKeyDone;
        
		textField.font = font;
		textField.placeholder = @"<type a word>";
		textField.textAlignment = UITextAlignmentLeft;	//default
		textField.autocapitalizationType = UITextAutocapitalizationTypeNone; //default
		textField.autocorrectionType = UITextAutocorrectionTypeNo;
		textField.secureTextEntry = NO;	//for secret passwords
        
		textField.delegate = self;
		[self addSubview: textField];
        
		f = CGRectMake(
                       b.origin.x,
                       b.origin.y + textField.bounds.size.height + 10,
                       b.size.width,
                       b.size.height - textField.bounds.size.height
                       );
        imageView = [[UIImageView alloc] initWithFrame: f];
        //imageView.image = [UIImage imageNamed:@""];
        [self addSubview: imageView];

        
        
		//label = [[UILabel alloc] initWithFrame: f];
		//label.backgroundColor = [UIColor orangeColor];
		//label.font = font;
		//[self addSubview: label];
	}
	return self;
}

#pragma mark -
#pragma mark methods of UITextFieldDelegate protocol

//Called when return key is pressed.
//Decide if the app should accept this input and hide the keyboard.

- (BOOL) textFieldShouldReturn: (UITextField *) tf {
	if ([tf.text isEqualToString: @""]) {
		textField.placeholder = @"<type a non-empty word>";
	} else {
		[tf resignFirstResponder];	//Hide keyboard.
	}
	return YES;	//The text field should do its default behavior.
}

//Called when keyboard is hidden.
//Process the text that was input.

- (void) textFieldDidEndEditing: (UITextField *) tf {
    NSLog(@"answer = %@", self.ans);
	if ([textField.text isEqualToString: @""]) {
		label.text = @"";
	} else {
		NSString *lowercase = [textField.text lowercaseString];
        NSLog(@"lowercase = %@", lowercase);
        if([lowercase isEqualToString:[self.ans lowercaseString]]){
            
            imageView.image = [UIImage imageNamed:@"correctamundo.jpg"];
        }
		else {
           imageView.image = [UIImage imageNamed:@"nedry.gif"];
        }
	}
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end
