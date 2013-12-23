//
//  UIAutoSizeLabel.m
//  design_test
//
//  Created by masaya on 2013/12/23.
//  Copyright (c) 2013年 masaya. All rights reserved.
//

#import "UIAutoSizeLabel.h"

@implementation UIAutoSizeLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/**
 勝手にサイズフィット
 */
-(void) setText:(NSString *)text
{
    [super setText:text];
    [self sizeToFit];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
