//
//  MainMeViewController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/25.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainMeViewController.h"

@interface MainMeViewController ()

@end

@implementation MainMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏标题
    self.navigationItem.title = @"我的";
    //设置导航栏右边的按钮
    UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon_20x20_-1"] forState:UIControlStateNormal];
    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click_20x20_"] forState:UIControlStateHighlighted];
    settingButton.size = settingButton.currentBackgroundImage.size;
    [settingButton addTarget:self action:@selector(settingClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *nightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nightButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon_20x20_"] forState:UIControlStateNormal];
    [nightButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click_26x26_"] forState:UIControlStateHighlighted];
    nightButton.size = nightButton.currentBackgroundImage.size;
    [nightButton addTarget:self action:@selector(nightClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.rightBarButtonItems = @[[[UIBarButtonItem alloc] initWithCustomView:settingButton],[[UIBarButtonItem alloc] initWithCustomView:nightButton]];
}

- (void)settingClick {
    XMGLogFunc;
}
- (void)nightClick {
    XMGLogFunc;
}
@end
