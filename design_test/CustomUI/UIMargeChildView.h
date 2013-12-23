//
//  UIMargeChildView.h
//  design_test
//
//  Created by masaya on 2013/12/22.
//  Copyright (c) 2013年 masaya. All rights reserved.
//

// このビューの一番先頭のビューを監視して
// サイズが変更されれば他の子ビューも変更する

#import <UIKit/UIKit.h>
enum GATHER_TYPE
{
    GATHER_BOTTOM = 0,
    GATHER_LEFT,
};

@interface UIMargeChildView : UIView

@property enum GATHER_TYPE GatherType;

-(void)doMarge:(int)num type:(enum GATHER_TYPE)type;

@end
