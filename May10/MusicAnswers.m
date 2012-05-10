//
//  MusicAnswers.m
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MusicAnswers.h"

@implementation MusicAnswers
@synthesize questions;
@synthesize answers;

@synthesize theatreQuestions;
@synthesize theatreAnswersA;
@synthesize theatreAnswersB;
@synthesize theatreResult;
@synthesize theatreResultImage;

- (id) init {
    
    questions = [NSArray arrayWithObjects:
             @"1. Who wrote the music for Casablanca?",
             @"2. What was the longest ever no1 on the billboard Hot 100",
             @"3. What was the first song ever recorded",
             nil
             ];
    
    answers = [NSArray arrayWithObjects:
                    @"Max Steiner",
                    @"One Sweet Day",
                    @"Au Clair De La Lune",
                    nil
                    ];
    
    theatreQuestions = [NSArray arrayWithObjects:
                 @"",
                 @"1. Who is your favourite musical character?",
                 @"2. Which of the following two was your favourite movie adaptations?",
                 @"3. Have you seen Spiderman turn off the dark?",
                 nil
                 ];
    
    theatreAnswersA = [NSArray arrayWithObjects:
               @"",
               @"Porgy",
               @"Westside Story",
               @"Yes",
               nil
               ];
    
    theatreAnswersB = [NSArray arrayWithObjects:
                      @"",
                      @"Roxie Hart",
                      @"Chicago",
                      @"No",
                      nil
                      ];
    
    theatreResult = [NSArray arrayWithObjects:
                       @"Survey says you would enjoy Avenue Q",
                       @"Survey says you would enjoy Spring Awakening",
                       @"Survey says you would enjoy Wicked",
                       nil
                       ];
    
    theatreResultImage = [NSArray arrayWithObjects:
                     @"avenueq.jpg",
                     @"spring-awakening.jpg",
                     @"wicked.jpg",
                     nil
                     ];
    
    return self;
}

@end
