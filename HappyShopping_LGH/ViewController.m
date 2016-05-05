//
//  ViewController.m
//  HappyShopping_LGH
//
//  Created by qf1 on 16/5/1.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createNavigationView];
    
    self.gwcbtnImgV = [[UIImageView alloc] initWithFrame:CGRectMake(8, 200, 30, 30)];
    self.gwcbtnImgV.image = [UIImage imageNamed:@"gwcbtn"];
    self.gwcbtnImgV.alpha = 0.3;
    
    [self.view addSubview:self.gwcbtnImgV];
    self.gwcbtnImgV.sd_layout.leftSpaceToView(self.view,8).bottomSpaceToView(self.view,58).widthIs(30).heightIs(30);
    
    
    
}

- (void)createNavigationView{
    
    self.navigationBgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, NAVIGATION_HEIGHT)];
    self.navigationBgView.image = [UIImage imageNamed:@"navBg"];
    
    [self.view addSubview:self.navigationBgView];
}

#pragma mark - 设置首页导航栏
- (void)setHomePageVCNavigation{
    
    UIImageView *logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 30, 80, 30)];
    logoImageView.backgroundColor = [UIColor greenColor];
    logoImageView.image = [UIImage imageNamed:@""];
    
    [self.navigationBgView addSubview:logoImageView];
    
    UIImageView *searchBgV = [[UIImageView alloc] initWithFrame:CGRectMake(100, 20, 150, 30)];
    
}

#pragma mark - 设置9.9包邮导航栏
- (void)setNinePointNineVCNavigation{
    
    
    

}

#pragma mark - 设置19.9包邮导航栏
- (void)setNineteenPointNineVCNavigation{

}

#pragma mark - 设置品牌特卖导航栏
- (void)setBandSaleVCNavigation{

}

#pragma mark - 设置我的导航栏
- (void)setMineVCNavigation{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
