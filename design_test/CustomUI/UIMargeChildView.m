//
//  UIMargeChildView.m
//  design_test
//
//  Created by masaya on 2013/12/22.
//  Copyright (c) 2013年 masaya. All rights reserved.
//

#import "UIMargeChildView.h"

@implementation UIMargeChildView

@synthesize GatherType;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)awakeFromNib
{
    UIView *mainView = self.subviews[0];
    
    [mainView addObserver:self forKeyPath:@"frame" options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld) context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    
    CGRect oldFrame,newFrame;
    
    if([change objectForKey:@"old"] != [NSNull null]) {
        oldFrame = [[change objectForKey:@"old"] CGRectValue];
    }
    if([object valueForKeyPath:keyPath] != [NSNull null]) {
        newFrame = [[object valueForKeyPath:keyPath] CGRectValue];
    }
    
    if(GatherType == GATHER_BOTTOM){
        [self doMarge:(int)(oldFrame.size.height - newFrame.size.height) type:GATHER_BOTTOM];
    }
    else if(GatherType == GATHER_LEFT){
        [self doMarge:(int)(oldFrame.size.width - newFrame.size.width) type:GATHER_LEFT];
    }
}

-(void)doMarge:(int)num type:(enum GATHER_TYPE)type
{
    if(self.subviews.count<2)
        return;
    
    for(int i=1;i<self.subviews.count;i++){
        CGRect subRect;
        UIView *subView = self.subviews[i];
        
        subRect = subView.frame;
        
        switch(type){
            case GATHER_BOTTOM:
                subRect.origin.y -= num;
                break;
            case GATHER_LEFT:
                subRect.origin.x -= num;
                break;
        }
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
