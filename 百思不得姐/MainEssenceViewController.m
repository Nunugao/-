//
//  MainEssenceViewController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/25.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainEssenceViewController.h"

@interface MainEssenceViewController ()

@end

@implementation MainEssenceViewController

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
