//
//  UIBarButtonItem+MainExtension.h
//  百思不得姐
//
//  Created by NuNu on 16/6/27.
//  Copyright © 2016年 NuNu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (MainExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
