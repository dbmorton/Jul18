//
//  MovieViewController.m
//  Aug15
//
//  Created by david morton on 8/15/13.
//  Copyright (c) 2013 David Morton Enterprises. All rights reserved.
//

#import "MovieView.h"
#import "MovieViewController.h"

@implementation MovieView

- (id) initWithFrame: (CGRect) frame movieViewController: (MovieViewController *__weak) vc
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor yellowColor];
		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		
		//Center the button in the view.
		CGSize s = CGSizeMake(200, 40);	//size of button
		CGRect b = self.bounds;
		
		button.frame = CGRectMake(
								  b.origin.x + (b.size.width - s.width) / 2,
								  b.origin.y + (b.size.height - s.height) / 2,
								  s.width,
								  s.height
								  );
		
		[button setTitleColor: [UIColor redColor]
					 forState: UIControlStateNormal];
		
		[button setTitle: @"Clay Pigeons"
				forState: UIControlStateNormal];
		
		[button addTarget: movieViewController
				   action: @selector(touchUpInside:)
		 forControlEvents: UIControlEventTouchUpInside
		 ];
		
		[self addSubview: button];
	}
	return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end
