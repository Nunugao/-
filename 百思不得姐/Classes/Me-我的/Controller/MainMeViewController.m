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
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon_20x20_-1" highImage:@"mine-setting-icon-click_20x20_" target:self action:@selector(settingClick)];
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon_20x20_" highImage:@"mine-moon-icon-click_26x26_" target:self action:@selector(moonClick)];
    
    self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
    self.view.backgroundColor = GlobalRGB;
}

- (void)settingClick {
    XMGLogFunc;
}
- (void)moonClick {
    XMGLogFunc;
}
@end
