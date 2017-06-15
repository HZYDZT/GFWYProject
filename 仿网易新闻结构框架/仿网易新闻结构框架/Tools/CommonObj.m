//
//  CommonObj.m
//  仿网易新闻结构框架
//
//  Created by SmartFun on 2017/6/15.
//  Copyright © 2017年 SmartFun. All rights reserved.
//

#import "CommonObj.h"
#import "TabbarViewController.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width

@implementation CommonObj

+ (UIView *)headerViewWithTitle:(NSString *)string
                          Click:(SEL)method{
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 64)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(WIDTH/2 - 60, 20, 120, 40)];
    label.text = string;
    label.textAlignment = NSTextAlignmentCenter;
    [v addSubview:label];
    if (method == nil)
    {
        
    }
    else
    {
        UIButton *cancelBtn = [[UIButton alloc] initWithFrame:CGRectMake(5, 20, 40, 40)];
        cancelBtn.backgroundColor = [UIColor greenColor];
        [v addSubview:cancelBtn];
        [cancelBtn addTarget:self action:method forControlEvents:UIControlEventTouchUpInside];
    }
    return v;
}



@end
