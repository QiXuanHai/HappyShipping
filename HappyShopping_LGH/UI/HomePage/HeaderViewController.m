//
//  HeaderViewController.m
//  HappyShopping_LGH
//
//  Created by qf1 on 16/5/5.
//  Copyright © 2016年 梁国海. All rights reserved.
//

#import "HeaderViewController.h"

@interface HeaderViewController ()

@property (strong,nonatomic) UIScrollView *topScrollView;

@end

@implementation HeaderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - 创建顶部scrollView
- (void)createTopScrollView{
    
    self.topScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 104)];
    self.topScrollView.contentSize = CGSizeMake(screenWidth*2, 104);
    
    
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
