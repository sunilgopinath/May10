//
//  TheatreViewController.h
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TheatreViewController : UIViewController

- (id) initWithText: (NSString *) t
              title: (NSString *) title
              image: (UIImage *) image
              badge: (NSString *) badge;

@property (nonatomic, copy) IBOutlet NSString *text;



@end
