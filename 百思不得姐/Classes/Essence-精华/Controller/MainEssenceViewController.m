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
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon_18x15_" highImage:@"MainTagSubIconClick_18x15_-1" target:self action:@selector(tagClick)];
    self.view.backgroundColor = GlobalRGB;
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:nil action:nil];
}

- (void)tagClick {
    XMGLog(@"%s", __func__);
}



@end
