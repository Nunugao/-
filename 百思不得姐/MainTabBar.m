
//
//  MainTabBar.m
//  百思不得姐
//
//  Created by NuNu on 16/6/26.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "MainTabBar.h"

@interface MainTabBar()
/* 发布按钮 */
@property (nonatomic, weak) UIButton *publishButton;
@end

@implementation MainTabBar
- (instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
    UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [publishButton setBackgroundImage:[UIImage imageNamed:@"main_bottom_writeposts_normal"] forState:UIControlStateNormal];
    [publishButton setBackgroundImage:[UIImage imageNamed:@"main_bottom_writeposts_normal"] forState:UIControlStateSelected];
    
    [self addSubview:publishButton];
        self.publishButton = publishButton;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat width = self.width;
    CGFloat height = self.height;
    
    //设置发布按钮的frame
    self.publishButton.width = self.publishButton.currentBackgroundImage.size.width;
    self.publishButton.height = self.publishButton.currentBackgroundImage.size.height;
    ;
    self.publishButton.center = CGPointMake(width *  0.5, height * 0.5);
    //设置其他UITabBarButton的frame
    CGFloat buttonY = 0;
    CGFloat buttonW = width / 5;
    CGFloat buttonH = height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
//        if (![button isKindOfClass:NSClassFromString(@"UItabBarButton")])continue;
        if (![button isKindOfClass:[UIControl class]] || button == self.publishButton) continue;
        //计算按钮x值
        CGFloat buttonX = buttonW * ((index > 1)?(index + 1):index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        //增加索引
        index++;
    }
}

@end
