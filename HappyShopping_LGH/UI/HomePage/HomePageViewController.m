//
//  HomePageViewController.m
//  HappyShopping_LGH
//
//  Created by qf1 on 16/5/2.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>


@property (strong,nonatomic) NSMutableArray *dataArray;

@property (strong,nonatomic) UICollectionView *collectionView;



@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage *image = [UIImage imageNamed:@"shake_bg"];
    self.logoImage = image;
    
    [self setHomePageVCNavigation];
    
    [self createCollectionView];
}

#pragma mark - 创建tableView
- (void)createCollectionView{
    
    UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, NAVIGATION_HEIGHT, screenWidth, screenHeight - NAVIGATION_HEIGHT - 49) collectionViewLayout:flowLayout];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    //    设置组头和组尾的大小
    //flowLayout.footerReferenceSize = CGSizeMake(0, 70);
    flowLayout.headerReferenceSize = CGSizeMake(0, 260);
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    //    注册collectionView 头部视图的类
    [self.collectionView registerClass:[UICollectionViewCell class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    
//    //    注册collectionView 尾部视图的类
//    [_collectionView registerClass:[UICollectionViewCell class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footer"];
    
    [self.view addSubview:_collectionView];

}

#pragma mark - 返回分组数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}

#pragma mark - 返回Item的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 10;
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * cellid = @"cell";
    
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellid forIndexPath:indexPath];
    
    cell.contentView.backgroundColor = [UIColor redColor];
    
    return cell;
    
}

#pragma mark - 返回每一个Item大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake((screenWidth-28)/2,(5.0/8.0)*screenWidth);
}

#pragma mark - Item被选中的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
}


#pragma mark - 返回collectionView 头部或者尾部视图的方法
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    //    判断当前需要返回的是头部视图还是尾部视图
    if (kind == UICollectionElementKindSectionHeader) {
        //        如果返回的是头部视图,就先去查找一下
        UICollectionViewCell * headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
        if (headerView == nil) {
            headerView = [[UICollectionViewCell alloc] init];
            
        }
        
        UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screenWidth,260 )];
        view.backgroundColor = [UIColor brownColor];
        [headerView.contentView addSubview:view];
        
        
        return headerView;
        
        
    }else{
        return nil;
    }
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(9, 9, 0, 9);
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
