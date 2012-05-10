//
//  TheatreViewController.h
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MusicAnswers;

@interface TheatreViewController : UIViewController {
	NSString *text;
    NSString *answerA;
    NSString *answerB;
    NSArray *resultOptions;
    MusicAnswers *model;
}

- (id) initWithText: (NSString *) t
              title: (NSString *) title
            answerA: (NSString *) a
            answerB: (NSString *) b
              model: (MusicAnswers *) m
              image: (UIImage *) image
              badge: (NSString *) badge;

- (void) touchUpInside: (id) sender;

@property (nonatomic, copy) IBOutlet NSString *text;
@property (nonatomic, copy) IBOutlet NSString *answerA;
@property (nonatomic, copy) IBOutlet NSString *answerB;
@property (strong, nonatomic) MusicAnswers *model;

@end
