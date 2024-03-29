//
//  HelpViewController.m
//  May10
//
//  Created by Sunil Gopinath on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HelpViewController.h"
#import "HelpView.h"

@interface HelpViewController ()

@end

@implementation HelpViewController
- (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil
{
	self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
	if (self) {
		// Custom initialization
        self.navigationItem.rightBarButtonItem =
        [[UIBarButtonItem alloc] initWithTitle: @"Done"
                                         style: UIBarButtonItemStyleDone
                                        target: self
                                        action: @selector(dismissModalViewController)];
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


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[HelpView alloc] initWithFrame: frame controller: self];
}


- (void) dismissModalViewController {
	//Before iOS 5, we said parentViewController instead of presentingViewController.
	[self.presentingViewController dismissModalViewControllerAnimated: YES];
}


/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void) viewDidLoad
 {
 [super viewDidLoad];
 }
 */

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
