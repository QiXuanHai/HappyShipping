//
//  UIButton+NormallyButtonCreater.m
//  UIButton（类别）
//
//  Created by qf1 on 16/3/4.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import "UIButton+NormallyButtonCreater.h"

@implementation UIButton (NormallyButtonCreater)

+ (UIButton *)createButtonWithTitle:(NSString *)title andBgImage:(NSString *)image andFrame:(CGRect)frame andTage:(id)tage andSel:(SEL)sel
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    //[button sizeToFit];
    [button addTarget:tage action:sel forControlEvents:UIControlEventTouchUpInside];
    
    button.exclusiveTouch = YES;
    
    
    return button;

}

@end
