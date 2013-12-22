//
//  UIMargeChildView.h
//  design_test
//
//  Created by masaya on 2013/12/22.
//  Copyright (c) 2013年 masaya. All rights reserved.
//

#import <UIKit/UIKit.h>
enum
{
    MARGE_VIEW_BOTTOM = 0,
    MARGE_VIEW_LEFT,
};

@interface UIMargeChildView : UIView

-(void)doMarge:(int)marge;

@end
