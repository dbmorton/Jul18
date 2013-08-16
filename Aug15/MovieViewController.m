//
//  MovieViewController.m
//  Aug15
//
//  Created by david morton on 8/15/13.
//  Copyright (c) 2013 David Morton Enterprises. All rights reserved.
//

#import "MovieViewController.h"
#import "MovieView.h"
#import "View.h"

@interface MovieViewController ()

@end

@implementation MovieViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		
		
		NSLog(@"init in movie view controller");
		
        // Custom initialization
		
		NSLog(@"Welcome!");
		// Override point for customization after application launch.
		NSBundle *bundle = [NSBundle mainBundle];
		if (bundle == nil) {
			NSLog(@"Could not access main bundle.");
		}
		
		NSString *filename = [bundle pathForResource: @"My First Project" ofType: @"m4v"];
		if (filename == nil) {
			NSLog(@"could not find file sneeze.m4v");
		}
		
		NSURL *url = [NSURL fileURLWithPath: filename];
		if (url == nil) {
			NSLog(@"could not create URL for file %@", filename);
		}
		
		
		controller = [[MPMoviePlayerController alloc] init];
		if (controller == nil) {
			NSLog(@"could not create MPMoviePlayerController");
		}
		
		
		controller.shouldAutoplay = NO; //don't start spontaneously
		controller.scalingMode = MPMovieScalingModeNone;
		controller.controlStyle = MPMovieControlStyleFullscreen;
		controller.movieSourceType = MPMovieSourceTypeFile; //vs. stream
		[controller setContentURL: url];
		
		NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
		 
		
		
		[center
		 addObserver: self
		 selector: @selector(playbackDidFinish:)
		 name: MPMoviePlayerPlaybackDidFinishNotification
		 object: controller
		 ];
		
		
    }
    return self;
}


- (void) loadView
{
	
	CGRect frame = [UIScreen mainScreen].bounds;
	self.view = [[MovieView alloc] initWithFrame: frame movieViewController: self];
	
}


- (void) touchUpInside: (id) sender {
	NSLog(@"touch");
	
	//sender is the button.
	controller.view.frame = self.view.frame;
	[self.view removeFromSuperview];
	if(controller == nil){
		NSLog(@"controller is nil");
	}
	self.view=controller.view;
	//[self.window addSubview: controller.view];
	NSLog(@"subview added");
	[controller play];
	 
}


- (void) playbackDidFinish: (NSNotification *) notification {
	//notification.object is the movie player controller.
	[controller.view removeFromSuperview];
	[UIApplication sharedApplication].statusBarHidden = NO;
	//[self.window addSubview: ];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
