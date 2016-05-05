//
//  ViewController.h
//  HappyShopping_LGH
//
//  Created by qf1 on 16/5/1.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController
{
    UIImage *_logoImage;
}

@property (strong,nonatomic) UIImageView *navigationBgView;

@property (strong,nonatomic) UIImageView *gwcbtnImgV;

@property (strong,nonatomic) UIImageView *searchBgV;

@property (strong,nonatomic) UIImage *logoImage;

@property (strong,nonatomic) UIImageView *logoImageView;

@property (strong,nonatomic) UILabel *searchLabel;

@property (strong,nonatomic) UILabel *titleLabel;

@property (strong,nonatomic) UIButton *categoryButton;

@property (strong,nonatomic) UIButton *setButton;

- (void)setHomePageVCNavigation;

- (void)setNinePointNineVCNavigation;

- (void)setNineteenPointNineVCNavigation;

- (void)setBandSaleVCNavigation;

- (void)setMineVCNavigation;

#pragma mark - 搜索栏执行的方法
- (void)searchAction;

#pragma mark - 分类按钮执行的方法
- (void)categoryButtonAction:(UIButton *)button;

#pragma mark - 设置按钮执行的方法
- (void)setButtonAction;


@end
