//
//  MusicAnswers.h
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicAnswers : NSObject {
    
    NSArray *questions;
    NSArray *answers;
    
    //theatre questions and answers
    NSArray *theatreQuestions;
    NSArray *theatreAnswersA;
    NSArray *theatreAnswersB;
    NSArray *theatreResult;
    NSArray *theatreResultImage;
    
}

@property (strong, nonatomic) NSArray *questions;
@property (strong, nonatomic) NSArray *answers;

//theatre q & a
@property (strong, nonatomic) NSArray *theatreQuestions;
@property (strong, nonatomic) NSArray *theatreAnswersA;
@property (strong, nonatomic) NSArray *theatreAnswersB;
@property (strong, nonatomic) NSArray *theatreResult;
@property (strong, nonatomic) NSArray *theatreResultImage;

@end
