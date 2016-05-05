//
//  CollectionViewController.m
//  HappyShopping_LGH
//
//  Created by qf1 on 16/5/5.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>


@property (nonatomic,strong) UICollectionView * collectionView;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    
}



- (void)setCollectionView{
    
    
    
    UICollectionViewFlowLayout * flowl = [UICollectionViewFlowLayout new];
    
    flowl.itemSize = CGSizeMake((self.view.frame.size.width - 30) / 2, ((self.view.frame.size.width - 30) / 2) * 1.5);
    
    flowl.minimumInteritemSpacing = 10;
    
    flowl.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    [flowl setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:flowl];
    
    self.collectionView.delegate = self;
    
    self.collectionView.dataSource = self;
    
    self.collectionView.backgroundColor = [UIColor blueColor];
    
    self.collectionView.showsVerticalScrollIndicator = NO;
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    [self.view addSubview:self.collectionView];
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    
    return 9;
    
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    
    
    return 1;
    
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString * cellid = @"cell";
    
    
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellid forIndexPath:indexPath];
    

    cell.backgroundColor = [UIColor grayColor];
    
    
    return cell;
    
    
    
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
