//
//  TestKeyboardView.m
//  design_test
//
//  Created by masaya on 2013/11/23.
//  Copyright (c) 2013年 masaya. All rights reserved.
//

#import "TestKeyboardView.h"

@interface TestKeyboardView ()

@end

@implementation TestKeyboardView

@synthesize KeyboardUpView;
@synthesize KeyboardUpTabBar;
@synthesize textView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [textView becomeFirstResponder];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(KeyboardWasShown:)name:UIKeyboardDidShowNotification object:nil];
}

-(void)KeyboardWasShown:(NSNotification*)note
{
    // キーボードの表示完了時の場所と大きさを取得。
    int need_ypad;
    CGRect keyboardFrameEnd = [[note.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    if((KeyboardUpTabBar.frame.origin.y + KeyboardUpTabBar.frame.size.height)>keyboardFrameEnd.origin.y){
        
        need_ypad = (KeyboardUpTabBar.frame.origin.y + KeyboardUpTabBar.frame.size.height)-keyboardFrameEnd.origin.y;
        
        
        KeyboardUpTabBar.frame = CGRectMake(0, KeyboardUpTabBar.frame.origin.y-need_ypad, KeyboardUpTabBar.frame.size.width, KeyboardUpTabBar.frame.size.height);
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
