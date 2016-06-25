//
//  ViewController.m
//  YPTabBarController
//
//  Created by 喻平 on 15/8/11.
//  Copyright (c) 2015年 YPTabBarController. All rights reserved.
//

#import "ViewController.h"
#import "CKTabBarController.h"
#import "RootTabController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.text = self.CK_tabItemTitle;
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];

//    [self.view addSubview:button];
    NSLog(@"viewDidLoad--->%@", self.CK_tabItemTitle);
}
- (void)buttonClicked:(UIButton *)button {
//    self.yp_tabBarController.contentViewFrame = CGRectMake(0, 64, 300, 500);
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear--->%@", self.CK_tabItemTitle);
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear--->%@", self.CK_tabItemTitle);
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear--->%@", self.CK_tabItemTitle);
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear--->%@", self.CK_tabItemTitle);
}

- (void)tabItemDidDeselected {
    NSLog(@"Deselected--->%@", self.CK_tabItemTitle);
}

- (void)tabItemDidSelected {
    NSLog(@"Selected--->%@", self.CK_tabItemTitle);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)doubleClicked {
    NSLog(@"doubleClicked");
}

@end
