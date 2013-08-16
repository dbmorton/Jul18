//
//  ViewController.m
//  Aug15
//
//  Created by david morton on 8/15/13.
//  Copyright (c) 2013 David Morton Enterprises. All rights reserved.
//

#import "ViewController.h"
#import "View.h"

@interface ViewController ()
@end

@implementation ViewController

- (void) touchUpInside: (id) sender {
	//The sender is the button that was pressed.
	
	NSLog(@"The \"%@\" button was pressed.",
		  [sender titleForState: UIControlStateNormal]);
	
	//AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
	//AudioServicesPlaySystemSound(sid);
}

- (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil
{
	self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
	if (self) {
		// Custom initialization
	}
	return self;
}

#pragma mark -
#pragma mark view lifecycle

- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].bounds;
	self.view = [[View alloc] initWithFrame: frame viewController: self];
}

- (void) viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void) didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
