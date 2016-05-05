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

@synthesize logoImage = _logoImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createNavigationView];
    
    //[self setHomePageVCNavigation];
    
    self.gwcbtnImgV = [[UIImageView alloc] initWithFrame:CGRectMake(8, 200, 30, 30)];
    self.gwcbtnImgV.image = [UIImage imageNamed:@"gwcbtn"];
    self.gwcbtnImgV.alpha = 0.3;
    self.gwcbtnImgV.userInteractionEnabled = YES;
    [self.view addSubview:self.gwcbtnImgV];
    self.gwcbtnImgV.sd_layout.leftSpaceToView(self.view,8).bottomSpaceToView(self.view,58).widthIs(30).heightIs(30);
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self.gwcbtnImgV addGestureRecognizer:tap];
    
}

- (void)tapAction{
    
    NSLog(@"jsalf");
}

- (void)createNavigationView{
    
    self.navigationBgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, NAVIGATION_HEIGHT)];
    self.navigationBgView.userInteractionEnabled = YES;
    self.navigationBgView.image = [UIImage imageNamed:@"navBg"];
    [self.view addSubview:self.navigationBgView];
    
    self.logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 25, 80, 30)];
    
    self.logoImageView.backgroundColor = [UIColor greenColor];
    self.logoImageView.hidden = YES;
    [self.navigationBgView addSubview:self.logoImageView];
    self.logoImageView.sd_layout.leftSpaceToView(self.navigationBgView,0).topSpaceToView(self.navigationBgView,25).widthIs(80).heightIs(30);
    
}

- (void)setLogoImage:(UIImage *)logoImage{
    
    _logoImage = logoImage;
    
    self.logoImageView.image = logoImage;
    
    self.logoImageView.hidden = NO;
}

#pragma mark - 设置首页导航栏
- (void)setHomePageVCNavigation{
    
//    UIImageView *logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 25, 80, 30)];
//    logoImageView.backgroundColor = [UIColor greenColor];
//    logoImageView.image = [UIImage imageNamed:@""];
//    
//    [self.navigationBgView addSubview:logoImageView];
    
    self.searchBgV = [[UIImageView alloc] initWithFrame:CGRectMake(100, 25, 170, 25)];
    self.searchBgV.image = [UIImage imageNamed:@"search_bg"];
    self.searchBgV.userInteractionEnabled = YES;
    [self.navigationBgView addSubview:self.searchBgV];
    self.searchBgV.sd_layout.leftSpaceToView(self.navigationBgView,100).topSpaceToView(self.navigationBgView,25).rightSpaceToView(self.navigationBgView,50).heightIs(25);
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(searchAction)];
    [self.searchBgV addGestureRecognizer:tap];
    
    UIImageView *searchImgV = [[UIImageView alloc] initWithFrame:CGRectMake(8, 2.5, 20, 20)];
    searchImgV.userInteractionEnabled = YES;
    searchImgV.image = [UIImage imageNamed:@"search"];
    [self.searchBgV addSubview:searchImgV];
    
    self.searchLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 2.5, 100, 20)];
    self.searchLabel.text = @"找宝贝";
    self.searchLabel.userInteractionEnabled = YES;
    self.searchLabel.textColor = [UIColor whiteColor];
    self.searchLabel.font = [UIFont boldSystemFontOfSize:15];
    [self.searchBgV addSubview:self.searchLabel];
}

#pragma mark - 搜索栏执行的方法
- (void)searchAction{
    NSLog(@"hehe");
}


#pragma mark - 设置9.9包邮导航栏
- (void)setNinePointNineVCNavigation{
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 200, 25)];
    //self.titleLabel.center = self.navigationBgView.center;
    self.titleLabel.text = @"9.9包邮-全部";
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.font = [UIFont systemFontOfSize:17];
    [self.navigationBgView addSubview:self.titleLabel];
    self.titleLabel.sd_layout.leftSpaceToView(self.navigationBgView,80).topSpaceToView(self.navigationBgView,25).rightSpaceToView(self.navigationBgView,80).heightIs(25);
    
    self.categoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.categoryButton.exclusiveTouch = YES;
    self.categoryButton.frame = CGRectMake(280, 25, 25, 25);
    [self.categoryButton setBackgroundImage:[UIImage imageNamed:@"btn_list"] forState:UIControlStateNormal];
    [self.navigationBgView addSubview:self.categoryButton];
    self.categoryButton.sd_layout.topSpaceToView(self.navigationBgView,25).rightSpaceToView(self.navigationBgView,8).heightIs(25).widthIs(25);
    
    [self.categoryButton addTarget:self action:@selector(categoryButtonAction:) forControlEvents:UIControlEventTouchUpInside];

}

#pragma mark - 设置19.9包邮导航栏
- (void)setNineteenPointNineVCNavigation{
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 200, 25)];
    //self.titleLabel.center = self.navigationBgView.center;
    self.titleLabel.text = @"19.9包邮-全部";
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.font = [UIFont systemFontOfSize:17];
    [self.navigationBgView addSubview:self.titleLabel];
    self.titleLabel.sd_layout.leftSpaceToView(self.navigationBgView,80).topSpaceToView(self.navigationBgView,25).rightSpaceToView(self.navigationBgView,80).heightIs(25);
    
    self.categoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.categoryButton.exclusiveTouch = YES;
    self.categoryButton.frame = CGRectMake(280, 25, 25, 25);
    [self.categoryButton setBackgroundImage:[UIImage imageNamed:@"btn_list"] forState:UIControlStateNormal];
    [self.navigationBgView addSubview:self.categoryButton];
    self.categoryButton.sd_layout.topSpaceToView(self.navigationBgView,25).rightSpaceToView(self.navigationBgView,8).heightIs(25).widthIs(25);
    
    [self.categoryButton addTarget:self action:@selector(categoryButtonAction:) forControlEvents:UIControlEventTouchUpInside];

}

#pragma mark - 设置品牌特卖导航栏
- (void)setBandSaleVCNavigation{
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 200, 25)];
    //self.titleLabel.center = self.navigationBgView.center;
    self.titleLabel.text = @"品牌特卖";
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.font = [UIFont systemFontOfSize:17];
    [self.navigationBgView addSubview:self.titleLabel];
    self.titleLabel.sd_layout.leftSpaceToView(self.navigationBgView,80).topSpaceToView(self.navigationBgView,25).rightSpaceToView(self.navigationBgView,80).heightIs(25);

}

#pragma mark - 设置我的导航栏
- (void)setMineVCNavigation{
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 200, 25)];
    //self.titleLabel.center = self.navigationBgView.center;
    self.titleLabel.text = @"我的";
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.font = [UIFont systemFontOfSize:17];
    [self.navigationBgView addSubview:self.titleLabel];
    self.titleLabel.sd_layout.leftSpaceToView(self.navigationBgView,80).topSpaceToView(self.navigationBgView,25).rightSpaceToView(self.navigationBgView,80).heightIs(25);
    
    self.setButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.setButton.exclusiveTouch = YES;
    self.setButton.frame = CGRectMake(8, 25, 25, 25);
    [self.setButton setBackgroundImage:[UIImage imageNamed:@"set"] forState:UIControlStateNormal];
    [self.navigationBgView addSubview:self.setButton];
    self.setButton.sd_layout.topSpaceToView(self.navigationBgView,25).leftSpaceToView(self.navigationBgView,8).heightIs(25).widthIs(25);
    
    [self.setButton addTarget:self action:@selector(setButtonAction) forControlEvents:UIControlEventTouchUpInside];

}

#pragma mark - 分类按钮执行的方法
- (void)categoryButtonAction:(UIButton *)button{

    NSLog(@"哈哈");
}

#pragma mark - 设置按钮执行的方法
- (void)setButtonAction{
    
    NSLog(@"嘿嘿嘿");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
