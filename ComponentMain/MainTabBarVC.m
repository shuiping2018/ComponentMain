//
//  MainTabBarVC.m
//  ComponentMain
//
//  Created by 王水平 on 2018/4/13.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import "MainTabBarVC.h"
#import <SPHomeComponentModule/Target_Home.h>

@interface MainTabBarVC ()

@end

@implementation MainTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self initAllChildViewController];
}

//初始化VC
-(void)initAllChildViewController
{
    
    Target_Home * target = [[Target_Home alloc] init];
    UIViewController * homeVC = [target Action_viewController:@{}];
    homeVC.title = @"首页";
    UINavigationController * homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    UIViewController *viewController = [[CTMediator sharedInstance] A_aViewControllerWithCallback:^(NSString *result) {}];
    viewController.title = @"消息";
    UINavigationController * messageNav = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    [homeNav.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    
    
    self.viewControllers = @[homeNav,messageNav];
}

@end
