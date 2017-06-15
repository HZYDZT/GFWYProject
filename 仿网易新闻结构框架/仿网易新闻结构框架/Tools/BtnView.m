//
//  BtnView.m
//  仿网易新闻结构框架
//
//  Created by SmartFun on 2017/6/15.
//  Copyright © 2017年 SmartFun. All rights reserved.
//

#import "BtnView.h"

@implementation BtnView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        for (int i = 0; i < 3 ; i++) {
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width/3 * i, 0, self.frame.size.width/3, 40)];
            btn.backgroundColor = [UIColor grayColor];
            [btn setTitle:[NSString stringWithFormat:@"按钮%d",i] forState:UIControlStateNormal];
            btn.tag = i + 1000;
            [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btn];
        }
//        [self setupUI];
    }
    return self;
}

- (void)clickBtn:(UIButton *)sender{

    self.clickBlock(sender.tag - 1000);
    
}

- (void)clickIndex:(ClickBlock)block{
    
    if (block) {
        self.clickBlock = block;
    }
    
}


@end
