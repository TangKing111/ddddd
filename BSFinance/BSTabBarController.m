//
//  BSTabBarController.m
//  BSFinance
//
//  Created by 汤万珍 on 2017/9/6.
//  Copyright © 2017年 BScompany. All rights reserved.
//

#import "BSTabBarController.h"
#import "FinanceMyController.h"
#import "FinanceViewVHomeController.h"
#import "NewCenterController.h"
@interface BSTabBarController ()

@end

@implementation BSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    FinanceViewVHomeController *nav1 =[[FinanceViewVHomeController alloc]init];
    nav1.tabBarItem.title = @"首页";
    nav1.tabBarItem.image = [UIImage imageNamed:@"图片1"];
    [nav1.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];// 始终绘制图片原始状态，不使用Tint Color。
    nav1.tabBarItem.selectedImage =[UIImage imageNamed:@"图片2"];
    [nav1.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav1.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav1];
    
    
    NewCenterController *twoview = [[NewCenterController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:twoview];
    nav2.title = @"消息";
    nav2.tabBarItem.image = [UIImage imageNamed:@"图片1"];
    [nav2.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav2.tabBarItem.selectedImage =[UIImage imageNamed:@"图片2"];
    [nav2.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    twoview.navigationItem.title = @"消息通知";
    twoview.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav2];
    
    
    FinanceMyController *nav3 =[[FinanceMyController alloc]init];
    nav3.tabBarItem.title = @"我的";
    nav3.tabBarItem.image = [UIImage imageNamed:@"图片1"];
    [nav3.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav3.tabBarItem.selectedImage =[UIImage imageNamed:@"图片2"];
    [nav3.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav3.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
