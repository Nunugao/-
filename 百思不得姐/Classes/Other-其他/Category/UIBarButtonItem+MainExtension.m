//
//  UIBarButtonItem+MainExtension.m
//  百思不得姐
//
//  Created by NuNu on 16/6/27.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import "UIBarButtonItem+MainExtension.h"

@implementation UIBarButtonItem (MainExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}
@end
