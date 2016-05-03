//
//  MyButton.m
//  YouYaoQi
//
//  Created by qf1 on 16/4/18.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

- (instancetype)init{
    
    if (self = [super init]) {
        self.exclusiveTouch = YES;
    }
    
    return self;
}

+ (id)buttonWithType:(UIButtonType)buttonType{
    
    UIButton *button = [UIButton buttonWithType:buttonType];
    button.exclusiveTouch = YES;
    
    return button;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
