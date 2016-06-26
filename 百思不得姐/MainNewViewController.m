//
//  MainNewViewController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/25.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainNewViewController.h"

@interface MainNewViewController ()

@end

@implementation MainNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle_107x19_-3"]];
    
    //设置导航栏左边按钮
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon_18x15_"] forState:UIControlStateNormal];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick_18x15_-1"] forState:UIControlStateHighlighted];
    leftButton.size = leftButton.currentBackgroundImage.size;
    [leftButton addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
}

- (void)tagClick {
    XMGLog(@"%s", __func__);
}




@end
