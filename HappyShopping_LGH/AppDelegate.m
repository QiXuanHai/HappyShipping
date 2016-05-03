//
//  AppDelegate.m
//  HappyShopping_LGH
//
//  Created by qf1 on 16/5/1.
//  Copyright (c) 2016年 梁国海. All rights reserved.
//

#import "AppDelegate.h"
#import "HomePageViewController.h"
#import "NinePointNineViewController.h"
#import "NineteenPointNineViewController.h"
#import "BandSaleViewController.h"
#import "MineViewController.h"

@interface AppDelegate ()

@property (strong,nonatomic) UITabBarController *tabbarC;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    
    [self initRootViewController];
    
    return YES;
}

#pragma mark - 初始化根视图
- (void)initRootViewController{
    
    HomePageViewController *homePageVC = [[HomePageViewController alloc] init];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"tabicon1"] tag:1];
    
    homePageVC.tabBarItem = item1;
    
    
    NinePointNineViewController *ninePointNineVC = [[NinePointNineViewController alloc] init];
    
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"9.9包邮" image:[UIImage imageNamed:@"tabicon2"] tag:2];

    ninePointNineVC.tabBarItem = item2;
    
    
    NineteenPointNineViewController *nineteenPointNineVC = [[NineteenPointNineViewController alloc] init];
    
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"19.9包邮" image:[UIImage imageNamed:@"tabicon3"] tag:3];
    
    nineteenPointNineVC.tabBarItem = item3;
    
    
    BandSaleViewController *bandSaleVC = [[BandSaleViewController alloc] init];
    
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"品牌特卖" image:[UIImage imageNamed:@"tabicon4"] tag:4];
    
    bandSaleVC.tabBarItem = item4;
    
    
    MineViewController *mineVC = [[MineViewController alloc] init];
    
    UITabBarItem *item5 = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"tabicon5"] tag:5];
    
    mineVC.tabBarItem = item5;
    
    
    self.tabbarC = [[UITabBarController alloc] init];
    
    self.tabbarC.viewControllers = @[homePageVC,ninePointNineVC,nineteenPointNineVC,bandSaleVC,mineVC];
    
    [self.tabbarC.tabBar setBarTintColor:[UIColor whiteColor]];
    self.tabbarC.tabBar.tintColor = [UIColor orangeColor];
    
    UINavigationController *NVC = [[UINavigationController alloc] initWithRootViewController:self.tabbarC];
    
    NVC.navigationBarHidden = YES;
    
    self.window.rootViewController = NVC;
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
