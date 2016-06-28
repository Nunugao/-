//
//  MainNavigationController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/27.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainNavigationController.h"

@interface MainNavigationController ()

@end

@implementation MainNavigationController
/**
 * 当第一次使用这个类的时候会调用一次
 */
+ (void)initialize {
    //当导航栏用在MainNavigationController中, apparance设置才会生效
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏背景图
    //    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:nil] forBarMetrics:UIBarMetricsDefault];

}
/**
 * 可以在这个方法中拦截所有push进来的控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count > 0) { //如果push进来的不是第一个控制器
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"capture_nav_back_normal_14x17_"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"capture_nav_back_highlight_14x17_"] forState:UIControlStateHighlighted];
        button.size = CGSizeMake(70, 30);
        // 让按钮内部的所有内容左对齐
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        //隐藏tabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    //这句super的push要放在后面, 让viewController可以覆盖
    [super pushViewController:viewController animated:NO];
}
- (void)back {
    [self popViewControllerAnimated:YES];
}

@end
