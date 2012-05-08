//
//  May10AppDelegate.h
//  May10
//
//  Created by Sunil Gopinath on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface May10AppDelegate: UIResponder <UIApplicationDelegate> {
	UIWindow *_window;
	NSArray *names;
	@public NSMutableArray *visited;
}

- (void) nextStation;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSArray *names;
@property (strong, nonatomic) NSMutableArray *visited;

@end