//
//  May10AppDelegate.m
//  May10
//
//  Created by Sunil Gopinath on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "May10AppDelegate.h"
#import "MovieViewController.h"
#import "MusicViewController.h"
#import "MusicAnswers.h"

#import "TheatreViewController.h"

@implementation May10AppDelegate

@synthesize window = _window;

- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{

    
    
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
	// Override point for customization after application launch.
	UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    model = [[MusicAnswers alloc] init];
    //Setting up the tabs
    MovieViewController *movieViewController1 = [[MovieViewController alloc]
                                                 initWithText: @"Can you identify this image?"	//apostophe, not prime
                                                 title: @"Movies"
                                                 image: [UIImage imageNamed: @"movies.png"]
                                                 badge: nil
                                                 ];
    
    TheatreViewController *theatreViewController = [[TheatreViewController alloc]
                                                 initWithText: @"Take the theatre personality quiz"
                                                 title: @"Theatre"
                                                 answerA: [model.theatreAnswersA objectAtIndex:0]
                                                 answerB: [model.theatreAnswersB objectAtIndex:0]
                                                 model: model
                                                 image: [UIImage imageNamed: @"theatre.png"]
                                                 badge: nil
                                                 ];
    /*
    MovieViewController *movieViewController3 = [[MovieViewController alloc]
                                                 initWithText: @"Have you been watching tv?"
                                                 title: @"TV"
                                                 image: [UIImage imageNamed: @"tv.png"]
                                                 badge: nil
                                                 ];
    
    MovieViewController *movieViewController4 = [[MovieViewController alloc]
                                                 initWithText: @"What about a good book? On an eReader of course!"
                                                 title: @"Books"
                                                 image: [UIImage imageNamed: @"book.png"]
                                                 badge: nil
                                                ];
    */
    MusicViewController *musicViewController = [[MusicViewController alloc]
                                                initWithText:[model.questions objectAtIndex:0]
                                                answer:[model.answers objectAtIndex: 0]
                                                model:model
                                                title:@"Music"
                                                image:[UIImage imageNamed: @"music.png"] 
                                                badge:nil
                                                ];
    
    navController = [[UINavigationController alloc]
                                             initWithRootViewController:musicViewController];
    
    theatreNavController = [[UINavigationController alloc]
                     initWithRootViewController:theatreViewController];

    
    visited = [NSMutableArray arrayWithObject: musicViewController];
    theatreVisited = [NSMutableArray arrayWithObject: theatreNavController];
    
    
	tabBarController.viewControllers = [NSArray arrayWithObjects:
                                        movieViewController1,
                                        theatreNavController,
                                        navController,
                                        nil
                                        ];
    
	tabBarController.selectedIndex = 0;	//0 (the leftmost one) is the default
	self.window.rootViewController = tabBarController;
	[self.window makeKeyAndVisible];
	return YES;
}

//Called when user touches a View.

- (void) nextStation {
    
	UINavigationController *navigationController = navController;
    
	NSUInteger i = navigationController.viewControllers.count;
	if (i == model.questions.count) {
		//We are currently visiting the last station, and can go no further.
		return;
	}
    
	if (visited.count <= i) {
		//This station is being visited for the first time.
		[visited addObject:
         [[MusicViewController alloc]
          initWithText:[model.questions objectAtIndex:i]
          answer:[model.answers objectAtIndex: i]
          model:model
          title:@"Music"
          image:[UIImage imageNamed: @"music.png"] 
          badge:nil
          ]
         ];
	}
	
	[navigationController pushViewController: [visited objectAtIndex: i] animated: YES];
}

- (void) nextTheatreQuestion {
    
	UINavigationController *navigationController = theatreNavController;
    
	NSUInteger i = navigationController.viewControllers.count;
	if (i == model.theatreQuestions.count) {
		[visited addObject:
         [[TheatreViewController alloc]
          initWithText: @""
          title: @"Result"
          answerA: @""
          answerB: @""
          model: model
          image: [UIImage imageNamed: @"theatre.png"]
          badge: nil
          ]
         ];

	}
    
	if (visited.count <= i) {
		//This station is being visited for the first time.
		[visited addObject:
         [[TheatreViewController alloc]
          initWithText: [model.theatreQuestions objectAtIndex:i]
          title: @"Theatre"
          answerA: [model.theatreAnswersA objectAtIndex:i]
          answerB: [model.theatreAnswersB objectAtIndex:i]
          model: model
          image: [UIImage imageNamed: @"theatre.png"]
          badge: nil
          ]
         ];
	}
	
	[navigationController pushViewController: [visited objectAtIndex: i] animated: YES];
}


- (void) applicationWillResignActive: (UIApplication *) application
{
	/*
	 Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	 Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
	 */
}

- (void) applicationDidEnterBackground: (UIApplication *) application
{
	/*
	 Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	 If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	 */
}

- (void) applicationWillEnterForeground: (UIApplication *) application
{
	/*
	 Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	 */
}

- (void) applicationDidBecomeActive: (UIApplication *) application
{
	/*
	 Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	 */
}

- (void) applicationWillTerminate: (UIApplication *) application
{
	/*
	 Called when the application is about to terminate.
	 Save data if appropriate.
	 See also applicationDidEnterBackground:.
	 */
}

@end
