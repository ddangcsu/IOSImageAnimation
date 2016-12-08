//
//  CustomImageView.m
//  Animation
//
//  Created by david on 12/8/16.
//  Copyright © 2016 David Dang. All rights reserved.
//

#import "CustomImageView.h"
@interface CustomImageView()
@property (strong, nonatomic) UIImage* myImage;

@end

@implementation CustomImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    // We initialize the image if image is empty
    if (self.myImage == nil) {
	    NSString *imageName = [[NSString alloc] initWithFormat:@"monkey_0"];
    	NSString *imagePath = [[NSBundle mainBundle] pathForResource:imageName ofType: @"png"];
	    self.myImage = [[UIImage alloc] initWithContentsOfFile:imagePath];
    }
	
    [self.myImage drawInRect:rect];
    
}


@end
