//
//  TabbarViewController.m
//  仿网易新闻结构框架
//
//  Created by SmartFun on 2017/6/15.
//  Copyright © 2017年 SmartFun. All rights reserved.
//

#import "TabbarViewController.h"
#import "HomeViewController.h"
#import "PersonViewController.h"

@interface TabbarViewController ()
@property (nonatomic, strong) HomeViewController *homeVc;
@property (nonatomic, strong) PersonViewController *personVc;
@end

@implementation TabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.homeVc = [HomeViewController new];
    self.personVc = [PersonViewController new];
    
    [self addSubController:self.homeVc Title:@"home" Image:@"nan" SelectImage:@"nan"];
    [self addSubController:self.personVc Title:@"person" Image:@"nan" SelectImage:@"nan"];
    
}

- (void)addSubController:(UIViewController *)controller
                   Title:(NSString *)title
                   Image:(NSString *)image
             SelectImage:(NSString *)selectImage{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
    [nav setNavigationBarHidden:YES];
    
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    [self addChildViewController:nav];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
