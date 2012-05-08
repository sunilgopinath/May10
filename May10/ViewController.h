//
//  ViewController.h
//  May10
//
//  Created by Sunil Gopinath on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (id) initWithTitle: (NSString *) title;
- (void) nextStation;
@property (nonatomic, copy) IBOutlet NSString *text;
@end
