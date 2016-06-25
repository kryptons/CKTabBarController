//
//  RootTabController.m
//  YPTabBarController
//
//  Created by 喻平 on 15/8/11.
//  Copyright (c) 2015年 YPTabBarController. All rights reserved.
//

#import "RootTabController.h"
#import "ViewController.h"
#import "FixedItemWidthTabController.h"
#import "DynamicItemWidthTabController.h"
#import "SegmentTabController.h"
#import "UnscrollTabController.h"

@interface RootTabController ()

@end

@implementation RootTabController
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self initViewControllers];
    self.tabBar.backgroundColor = [UIColor lightGrayColor];
    
    UIViewController *controller1 = self.viewControllers[0];
    UIViewController *controller2 = self.viewControllers[1];
    UIViewController *controller3 = self.viewControllers[2];
    UIViewController *controller4 = self.viewControllers[3];
    controller1.CK_tabItem.badge = 8;
    controller2.CK_tabItem.badge = 88;
    controller3.CK_tabItem.badge = 120;
    controller4.CK_tabItem.badgeStyle = CKTabItemBadgeStyleDot;
}

- (void)viewDidAppear:(BOOL)animated {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initViewControllers {
    
    DynamicItemWidthTabController *controller1 = [[DynamicItemWidthTabController alloc] init];
    controller1.CK_tabItemTitle = @"动态宽度";
    controller1.CK_tabItemImage = [UIImage imageNamed:@"tab_message_normal"];
    controller1.CK_tabItemSelectedImage = [UIImage imageNamed:@"tab_message_selected"];
    
    FixedItemWidthTabController *controller2 = [[FixedItemWidthTabController alloc] init];
    controller2.CK_tabItemTitle = @"固定宽度";
    controller2.CK_tabItemImage = [UIImage imageNamed:@"tab_discover_normal"];
    controller2.CK_tabItemSelectedImage = [UIImage imageNamed:@"tab_discover_selected"];
    
    UnscrollTabController *controller3 = [[UnscrollTabController alloc] init];
    controller3.CK_tabItemTitle = @"不滚动tab";
    controller3.CK_tabItemImage = [UIImage imageNamed:@"tab_me_normal"];
    controller3.CK_tabItemSelectedImage = [UIImage imageNamed:@"tab_me_selected"];
    
    SegmentTabController *controller4 = [[SegmentTabController alloc] init];
    controller4.CK_tabItemTitle = @"系统Segment";
    controller4.CK_tabItemImage = [UIImage imageNamed:@"tab_me_normal"];
    controller4.CK_tabItemSelectedImage = [UIImage imageNamed:@"tab_me_selected"];
    
    
    self.viewControllers = [NSMutableArray arrayWithObjects:controller1, controller2, controller3, controller4, nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
