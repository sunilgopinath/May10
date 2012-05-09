//
//  May10AppDelegate.h
//  May10
//
//  Created by Sunil Gopinath on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface May10AppDelegate: UIResponder <UIApplicationDelegate> {
	NSArray *names;
	NSDictionary *information;
	NSMutableArray *visited;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

//StationViewController objects read these two properties:
@property (strong, nonatomic) NSArray *names;
@property (strong, nonatomic) NSDictionary *information;

@end