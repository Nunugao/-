//
//  MainFriendViewController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/25.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainFriendViewController.h"
#import "MainTestViewController.h"

@interface MainFriendViewController ()

@end

@implementation MainFriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏标题
    self.navigationItem.title = @"我的关注";
    
    //设置导航栏左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"cellFollowDisableIconN_19x18_" highImage:@"cellFollowClickIcon_19x20_@1x"  target:self action:@selector(friendClick)];
    self.view.backgroundColor = GlobalRGB;
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:nil action:nil];
}

- (void)friendClick {
    XMGLogFunc;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    MainTestViewController *vc = [[MainTestViewController alloc] init];
    vc.view.backgroundColor = XMGRGBColor(100, 200, 100);
    [self.navigationController pushViewController:vc animated:YES];
}
@end
