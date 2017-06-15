//
//  CommonObj.h
//  仿网易新闻结构框架
//
//  Created by SmartFun on 2017/6/15.
//  Copyright © 2017年 SmartFun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface CommonObj : NSObject

// 封装的头视图
+ (UIView *)headerViewWithTitle:(NSString *)string
                          Click:(SEL)method;

+(void)setNavHidden:(BOOL)value;


@end
