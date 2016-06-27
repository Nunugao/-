
//
//  MainTestViewController.m
//  百思不得姐
//
//  Created by NuNu on 16/6/27.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainTestViewController.h"

@interface MainTestViewController ()

@end

@implementation MainTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"MainTestViewController";
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = XMGRGBColor(200, 100, 200);
    [self.navigationController pushViewController:vc animated:YES];
}
@end
