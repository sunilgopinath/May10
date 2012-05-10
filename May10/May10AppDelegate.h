//
//  May10AppDelegate.h
//  May10
//
//  Created by Sunil Gopinath on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>	//needed for MPMoviePlayerController
@class MusicAnswers;

@interface May10AppDelegate: UIResponder <UIApplicationDelegate> {
	UIWindow *_window;
    NSArray *names;
    NSArray *musicAnswers;
    NSMutableArray *visited;
    UINavigationController* navController;
    MusicAnswers *model;
    
    // theatre navigator
    UINavigationController* theatreNavController;
    NSMutableArray *theatreVisited;

}

- (void) nextStation;
- (void) nextTheatreQuestion;

@property (strong, nonatomic) UIWindow *window;

@end