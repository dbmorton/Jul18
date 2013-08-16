//
//  MovieViewController.h
//  Aug15
//
//  Created by david morton on 8/15/13.
//  Copyright (c) 2013 David Morton Enterprises. All rights reserved.
//

#import <MediaPlayer/MediaPlayer.h>	//needed for MPMoviePlayerController
#import <UIKit/UIKit.h>
@class MovieViewController;

@interface MovieView : UIView {
	MovieViewController *__weak movieViewController;
	UIButton *button;
}

- (id) initWithFrame: (CGRect) frame movieViewController: (MovieViewController *__weak) vc;

@end
