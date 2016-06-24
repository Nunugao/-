//
//  MainTabBarController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/24.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainTabBarController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加子控制器
    UIViewController *vc01 = [[UIViewController alloc] init];
    vc01.tabBarItem.title = @"精选";
    vc01.tabBarItem.image = [UIImage imageNamed:@"main_bottom_essence_normal"];
    vc01.tabBarItem.selectedImage = [UIImage imageNamed:@"main_bottom_essence_press"];
    NSMutableDictionary *atts = [NSMutableDictionary dictionary];
    atts[NSFontAttributeName] =[UIFont systemFontOfSize:12];
    atts[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [vc01.tabBarItem setTitleTextAttributes:atts forState:UIControlStateNormal];
    
    NSMutableDictionary *selectedAtts = [NSMutableDictionary dictionary];
    selectedAtts[NSFontAttributeName] =[UIFont systemFontOfSize:16];
    selectedAtts[NSForegroundColorAttributeName] = [UIColor grayColor];
    [vc01.tabBarItem setTitleTextAttributes:selectedAtts forState:UIControlStateSelected];
    
    vc01.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:vc01];
    
    UIViewController *vc02 = [[UIViewController alloc] init];
    vc02.tabBarItem.title = @"新帖";
    vc02.tabBarItem.image = [UIImage imageNamed:@"main_bottom_latest_normal"];
    vc02.tabBarItem.selectedImage = [UIImage imageNamed:@"main_bottom_latest_press"];
    [vc02.tabBarItem setTitleTextAttributes:atts forState:UIControlStateNormal];
    [vc02.tabBarItem setTitleTextAttributes:selectedAtts forState:UIControlStateSelected];
    vc02.view.backgroundColor = [UIColor yellowColor];
    [self addChildViewController:vc02];
    
    UIViewController *vc03 = [[UIViewController alloc] init];
    vc03.tabBarItem.title = @"关注";
    vc03.tabBarItem.image = [UIImage imageNamed:@"main_bottom_news_normal"];
    vc03.tabBarItem.selectedImage = [UIImage imageNamed:@"main_bottom_news_press"];
    [vc03.tabBarItem setTitleTextAttributes:atts forState:UIControlStateNormal];
    [vc03.tabBarItem setTitleTextAttributes:selectedAtts forState:UIControlStateSelected];
    vc03.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:vc03];
    UIViewController *vc04 = [[UIViewController alloc] init];
    vc04.tabBarItem.title = @"我的";
    vc04.tabBarItem.image = [UIImage imageNamed:@"main_bottom_my_normal"];
    vc04.tabBarItem.selectedImage = [UIImage imageNamed:@"main_bottom_my_press"];
    [vc04.tabBarItem setTitleTextAttributes:atts forState:UIControlStateNormal];
    [vc04.tabBarItem setTitleTextAttributes:selectedAtts forState:UIControlStateSelected];
    vc04.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:vc04];
    
    
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
