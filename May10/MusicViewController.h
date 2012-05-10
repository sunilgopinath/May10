//
//  MusicViewController.h
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MusicAnswers;

@interface MusicViewController : UIViewController {
    MusicAnswers *model;
}

- (id) initWithText: (NSString *) t
             answer: (NSString *) a
              model: (MusicAnswers *) m
              title: (NSString *) title
              image: (UIImage *) image
              badge: (NSString *) badge;

- (void) nextQuestion;

@property (nonatomic, copy) IBOutlet NSString *text;
@property (nonatomic, copy) IBOutlet NSString *answer;
@end