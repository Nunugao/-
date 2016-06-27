//
//  MainTabBarController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/24.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainTabBarController.h"
#import "MainEssenceViewController.h"
#import "MainNewViewController.h"
#import "MainFriendViewController.h"
#import "MainMeViewController.h"
#import "MainTabBar.h"
#import "MainNavigationController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //通过appearance统一设置UITabBarItem的文字属性
    NSMutableDictionary *atts = [NSMutableDictionary dictionary];
    atts[NSFontAttributeName] =[UIFont systemFontOfSize:12];
    atts[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    NSMutableDictionary *selectedAtts = [NSMutableDictionary dictionary];
    selectedAtts[NSFontAttributeName] =[UIFont systemFontOfSize:16];
    selectedAtts[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:atts forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAtts forState:UIControlStateSelected];
    
    //添加子控制器
    
    [self setupchildvc:[[MainEssenceViewController alloc] init] title:@"精选" image:@"main_bottom_essence_normal" selectedImage:@"main_bottom_essence_press"];
    [self setupchildvc:[[MainNewViewController alloc] init] title:@"新帖" image:@"main_bottom_latest_normal" selectedImage:@"main_bottom_latest_press"];
    [self setupchildvc:[[MainFriendViewController alloc] init] title:@"关注" image:@"main_bottom_news_normal" selectedImage:@"main_bottom_news_press"];
    [self setupchildvc:[[MainMeViewController alloc] init] title:@"我的" image:@"main_bottom_my_normal" selectedImage:@"main_bottom_my_press"];

    
    //更换tabBar
    [self setValue:[[MainTabBar alloc] init] forKey:@"tabBar"];
}

//初始化子控制器
- (void)setupchildvc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    //设置文字和图片
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
//    vc.view.backgroundColor = [UIColor colorWithRed:<#(CGFloat)#> green:<#(CGFloat)#> blue:<#(CGFloat)#> alpha:<#(CGFloat)#>];
    
    //包装一个导航控制器, 添加导航控制器为tabBarController的子控制器
    MainNavigationController *nav = [[MainNavigationController alloc] initWithRootViewController:vc];
    //设置导航栏背景图
//    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:nil] forBarMetrics:UIBarMetricsDefault];
    [self addChildViewController:nav];
}

@end
