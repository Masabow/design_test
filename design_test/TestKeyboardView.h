//
//  TestKeyboardView.h
//  design_test
//
//  Created by masaya on 2013/11/23.
//  Copyright (c) 2013年 masaya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestKeyboardView : UIViewController<UIToolbarDelegate,UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *KeyboardUpView;
@property (weak, nonatomic) IBOutlet UIToolbar *KeyboardUpTabBar;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
