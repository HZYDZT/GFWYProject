//
//  HomeViewController.m
//  仿网易新闻结构框架
//
//  Created by SmartFun on 2017/6/15.
//  Copyright © 2017年 SmartFun. All rights reserved.
//

#import "HomeViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "CommonObj.h"
#import "BtnView.h"

@interface HomeViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIView *header;
@property (nonatomic, strong) UIScrollView *backScrollerV;
@property (nonatomic, strong) BtnView *btnV;

@end

@implementation HomeViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addSubViewController];
    
    [self setupUI];
    
}

- (void)addSubViewController{
    OneViewController *vc1 = [OneViewController new];
    vc1.view.backgroundColor = [UIColor yellowColor];
    [self addChildViewController:vc1];
    
    TwoViewController *vc2 = [TwoViewController new];
    vc2.view.backgroundColor = [UIColor orangeColor];
    [self addChildViewController:vc2];
    
    ThreeViewController *vc3 = [ThreeViewController new];
    vc3.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:vc3];
}

- (void)setupUI{
    [self.view addSubview:self.header];
    [self.view addSubview:self.backScrollerV];
    self.btnV = [[BtnView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 50)];
    
    __weak typeof(self) weakSelf = self;
    [self.btnV clickIndex:^(NSInteger index) {
        
        [weakSelf.backScrollerV setContentOffset:CGPointMake(index * self.view.frame.size.width, 0)];
        
    }];
    [self.view addSubview:self.btnV];
    
    
    
    for (int i = 0; i < 3; i++) {
        UIViewController *temp = self.childViewControllers[i];
        temp.view.frame = CGRectMake([UIScreen mainScreen].bounds.size.width * i, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 50 - 64);
        [self.backScrollerV addSubview:temp.view];
    }
    
}

#pragma mark - click



#pragma mark - init 

- (UIView *)header{
    if (!_header) {
        _header = [CommonObj headerViewWithTitle:@"新闻" Click:nil];
    }
    return _header;
}

- (UIScrollView *)backScrollerV{
    if (!_backScrollerV) {
        _backScrollerV = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 114, self.view.frame.size.width, self.view.frame.size.height - 64 - 50)];
        _backScrollerV.backgroundColor = [UIColor redColor];
        _backScrollerV.delegate = self;
        [_backScrollerV setContentSize:CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height - 64 - 50)];
        _backScrollerV.pagingEnabled = YES;
        _backScrollerV.showsHorizontalScrollIndicator = NO;
    }
    return _backScrollerV;
}

@end
