//
//  TheatreViewController.m
//  May10
//
//  Created by Sunil Gopinath on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheatreViewController.h"
#import "TheatreView.h"
#import "May10AppDelegate.h"


@implementation TheatreViewController

@synthesize text;
@synthesize answerA;
@synthesize answerB;
@synthesize model;
/*
 - (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil
 {
 self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */


- (id) initWithText: (NSString *) t
              title: (NSString *) title
            answerA: (NSString *) a
            answerB: (NSString *) b
              model: (MusicAnswers *) m
              image: (UIImage *) image
              badge: (NSString *) badge {
    
	self = [super initWithNibName: nil bundle: nil];
	if (self != nil) {
		self.title = title;
		self.tabBarItem.image = image;
		self.tabBarItem.badgeValue = badge;
		self.text = t;		//text = [t copy];
        self.answerA = a;
        self.answerB = b;
        self.model = m;
	}
	
	return self;
}


- (void) didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void) touchUpInside:(id)sender {
   	UIApplication *application = [UIApplication sharedApplication];
	May10AppDelegate *applicationDelegate = application.delegate;
	[applicationDelegate nextTheatreQuestion];
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[TheatreView alloc] initWithFrame: frame controller: self];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void) viewDidLoad
{
	[super viewDidLoad];
}


- (void) viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

@end
