//
//  CKTabBarController.h
//  CKTabBarController
//
//  Created by 喻平 on 15/8/11.
//  Copyright (c) 2015年 CKTabBarController. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CKTabBar.h"
#import "CKTabItem.h"

@interface CKTabBarController : UIViewController <CKTabBarDelegate>

@property (nonatomic, strong) CKTabBar *tabBar;

@property (nonatomic, copy) NSArray <UIViewController *> *viewControllers;

/**
 *  内容视图的Frame
 */
@property (nonatomic, assign) CGRect contentViewFrame;

/**
 *  被选中的ViewController的Index
 */
@property (nonatomic, assign, readonly) NSInteger selectedControllerIndex;

/**
 *  获取被选中的ViewController
 */
- (UIViewController *)selectedController;

/**
 *  设置内容视图支持滑动切换，以及点击item切换时是否有动画
 *
 *  @param animated  点击切换时是否支持动画
 */
- (void)setContentScrollEnabledAndTapSwitchAnimated:(BOOL)animated;

@end

@interface UIViewController (CKTabBarController)

@property (nonatomic, copy) NSString *CK_tabItemTitle; // tabItem的标题
@property (nonatomic, strong) UIImage *CK_tabItemImage; // tabItem的图像
@property (nonatomic, strong) UIImage *CK_tabItemSelectedImage; // tabItem的选中图像

- (CKTabItem *)CK_tabItem;
- (CKTabBarController *)CK_tabBarController;

/**
 *  ViewController对应的Tab被Select后，执行此方法
 */
- (void)tabItemDidSelected;

/**
 *  ViewController对应的Tab被Deselect后，执行此方法
 */
- (void)tabItemDidDeselected;
@end