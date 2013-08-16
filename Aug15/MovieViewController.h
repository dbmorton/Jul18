//
//  MovieViewController.h
//  Aug15
//
//  Created by david morton on 8/15/13.
//  Copyright (c) 2013 David Morton Enterprises. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>	//needed for MPMoviePlayerController
#import "MovieView.h"

@interface MovieViewController : UIViewController <UIApplicationDelegate> {

	MPMoviePlayerController *controller;
	MovieView *view;
}

- (void) touchUpInside: (id) sender;




@end
