//
//  JTCCustomizableView.h
//  C_POS
//
//  Created by Tomohisa Takaoka on 6/2/12.
/***************
 Copyright (c) 2012 Tomohisa Takaoka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this
 software and associated documentation files (the "Software"), to deal in the Software
 without restriction, including without limitation the rights to use, copy, modify, merge,
 publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
 to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies 
 or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
 PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE 
 FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR 
 OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
 DEALINGS IN THE SOFTWARE.
 ***************/

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UIView (JTCCustomizableView2)

// Those Property would only work with Storyboard - iOS5
@property (nonatomic, strong) UIColor* borderColor;     // Color
@property (nonatomic, strong) UIColor* shadowColor;     // Color
@property (nonatomic, strong) NSString* shadowOpacity;  // Number (available decimal) eg. 1 or 0.5
@property (nonatomic, strong) NSString* borderWidth;    // Number (available decimal) eg. 1 or 0.5
@property (nonatomic, strong) NSString* cornerRadius;   // Number (available decimal) eg. 1 or 0.5
@property (nonatomic, strong) NSString* shadowRadius;   // Number (available decimal) eg. 1 or 0.5
@property (nonatomic, strong) NSValue* shadowOffset;    // CGSize


@end

@interface JTCCustomizableView : UIView
// Those Property would only work with Storyboard - iOS5
@property (nonatomic, strong) UIColor* borderColor;     // Color
@property (nonatomic, strong) UIColor* shadowColor;     // Color
@property (nonatomic, strong) NSString* shadowOpacity;  // Number (available decimal) eg. 1 or 0.5
@property (nonatomic, strong) NSString* borderWidth;    // Number (available decimal) eg. 1 or 0.5
@property (nonatomic, strong) NSString* cornerRadius;   // Number (available decimal) eg. 1 or 0.5
@property (nonatomic, strong) NSString* shadowRadius;   // Number (available decimal) eg. 1 or 0.5
@property (nonatomic, strong) NSValue* shadowOffset;    // CGSize
@end
