//
//  UIButton+NormallyButtonCreater.h
//  UIButton（类别）
//
//  Created by qf1 on 16/3/4.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (NormallyButtonCreater)

+ (UIButton *)createButtonWithTitle:(NSString *)title andBgImage:(UIImage *)image andFrame:(CGRect)frame andTage:(id)tage andSel:(SEL)sel;

@end
