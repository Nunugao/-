//
//  MainFriendViewController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/25.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainFriendViewController.h"

@interface MainFriendViewController ()

@end

@implementation MainFriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏标题
    self.navigationItem.title = @"我的关注";
    
    //设置导航栏左边的按钮
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"cellFollowDisableIconN_19x18_"] forState:UIControlStateNormal];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"cellFollowClickIcon_19x20_@1x"] forState:UIControlStateHighlighted];
    leftButton.size = leftButton.currentBackgroundImage.size;
    [leftButton addTarget:self action:@selector(friendClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
}

- (void)friendClick {
    XMGLogFunc;
}
@end
