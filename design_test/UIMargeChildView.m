//
//  UIMargeChildView.m
//  design_test
//
//  Created by masaya on 2013/12/22.
//  Copyright (c) 2013年 masaya. All rights reserved.
//

#import "UIMargeChildView.h"

@implementation UIMargeChildView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)doMarge:(int)marge
{
    CGRect frame;
    UIView *mainView = self.subviews[0];

    frame = mainView.frame;
    
    for(int i=1;i<self.subviews.count;i++){
        CGRect subRect;
        UIView *subView = self.subviews[i];
        
        subRect = subView.frame;
        
        subRect.origin.y = frame.origin.y+frame.size.height;
        subView.frame = subRect;
    }
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
