//
//  NinePointNineViewController.m
//  HappyShopping_LGH
//
//  Created by qf1 on 16/5/2.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import "NinePointNineViewController.h"

#import "CollectionViewController.h"

#define button_width self.view.frame.size.width / self.buttonArray.count

#define button_height 25

@interface NinePointNineViewController ()<UIScrollViewDelegate>


@property (nonatomic,strong) NSArray * buttonTitleArray;


@property (nonatomic,strong) NSArray * buttonArray;


@property (nonatomic,strong) NSMutableArray * dataArray;

@property (nonatomic,strong) UIScrollView * mainScrollView;


@property (nonatomic,assign) BOOL isUp;

@end

@implementation NinePointNineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self setNinePointNineVCNavigation];
    
    [self setTopButton];
    
    [self setScrollViewAndCollectionView];
    
    [self.view addSubview:self.gwcbtnImgV];
}



#pragma mark - 设置顶部按钮（推销，销售，价格..）
- (void)setTopButton{
    
    
    self.buttonArray = @[@"推荐",@"销售",@"价格",@"折扣",@"最新"];
    
    for (int i = 0; i < self.buttonArray.count; i ++) {
        
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        
        button.frame = CGRectMake(button_width * i, NAVIGATION_HEIGHT, button_width, button_height);
        
        button.tag = i + 50;
        
        button.backgroundColor = [UIColor whiteColor];
        
        [button setTitle:self.buttonArray[i] forState:UIControlStateNormal];
        
        if ([button.titleLabel.text isEqualToString:@"价格"]) {
            
            
            [button setImage:[UIImage imageNamed:@"icon_up"] forState:UIControlStateSelected];
            
            [button setImageEdgeInsets:UIEdgeInsetsMake(0, 52, 0, 0)];
            
            
        }
        
        
        button.titleLabel.font = [UIFont systemFontOfSize:15];
        
        [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        
        [button setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
        
        [button addTarget:self action:@selector(topButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:button];
        
        
        if (button.tag == 50) {
            
            button.selected = YES;
            
        }
        
        
        
    }
    
    
    
}

#pragma mark - 按钮触发的方法
- (void)topButtonAction:(UIButton *)button{
    
    for (int i = 0; i < self.buttonArray.count; i ++) {
        
        UIButton * button1 = (UIButton *)[self.view viewWithTag:50 + i];
        
        button1.selected = NO;
        
        
    }
    
    button.selected = YES;
    
    
    if ([button.titleLabel.text isEqualToString:@"价格"]) {
        
        self.isUp = !self.isUp;
        
        if (self.isUp) {
            
            [button setImage:[UIImage imageNamed:@"icon_up"] forState:UIControlStateSelected];
            
            
        }else{
            
            
            [button setImage:[UIImage imageNamed:@"icon_down"] forState:UIControlStateSelected];
            
        }
        
        
    }
    
    //mainScrollView滚动到的位置
    [self.mainScrollView setContentOffset:CGPointMake((button.tag - 50) * screenWidth, 0) animated:NO];
    
    
}


#pragma mark - 创建scrollView和collectionViewController
- (void)setScrollViewAndCollectionView{
    
    
    
    self.mainScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, NAVIGATION_HEIGHT + button_height, screenWidth, screenHeight - NAVIGATION_HEIGHT - button_height - 44)];
    
    self.mainScrollView.userInteractionEnabled = YES;
    
    self.mainScrollView.delegate = self;
    
    self.mainScrollView.backgroundColor = [UIColor redColor];
    
    self.mainScrollView.contentSize = CGSizeMake(screenWidth * self.buttonArray.count, self.mainScrollView.frame.size.height);
    
    self.mainScrollView.showsHorizontalScrollIndicator = NO;
    
    self.mainScrollView.pagingEnabled = YES;
    
    [self.view addSubview:self.mainScrollView];
    
    
    
    for (int i = 0; i < self.buttonArray.count; i ++) {
        
        
        CollectionViewController * cVC = [[CollectionViewController alloc] init];
        
        cVC.view.frame = CGRectMake(self.mainScrollView.frame.size.width * i,0,self.mainScrollView.frame.size.width, self.mainScrollView.frame.size.height);
        
        [self.mainScrollView addSubview:cVC.view];
        
        [cVC setCollectionView];
        
        [self addChildViewController:cVC];
        
    }
    
    
    
}





#pragma mark - mainScrellView结束滑动时
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    
    
    float x = scrollView.contentOffset.x / screenWidth + 50;
    
    
    
    for (int i = 0; i < self.buttonArray.count; i ++) {
        
        UIButton * button = (UIButton *)[self.view viewWithTag:i + 50];
        
        
        button.selected = NO;
        
        
    }
    
    
    UIButton * selectedButton = (UIButton *)[self.view viewWithTag:x];
    
    selectedButton.selected = YES;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
