//
//  BtnView.h
//  仿网易新闻结构框架
//
//  Created by SmartFun on 2017/6/15.
//  Copyright © 2017年 SmartFun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickBlock)(NSInteger index);

@interface BtnView : UIView


@property (nonatomic, strong) ClickBlock clickBlock;


- (void)clickIndex:(ClickBlock)block;

@end
