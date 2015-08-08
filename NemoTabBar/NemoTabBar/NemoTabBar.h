//
//  NemoTabBar.h
//  NemoTabBar
//
//  Created by LiuDongQi on 15/8/7.
//  Copyright (c) 2015年 Nemo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NemoTabBar : UIView
/** tabBar的字体*/
@property (nonatomic,copy) NSArray * tabBarTitle;
/** 正常状态的按钮*/
@property (nonatomic,copy) NSArray * iconImage;
/** 被选中的按钮*/
@property (nonatomic,copy) NSArray * selectIconImage;
/** 装切换界面的数组*/
@property (nonatomic,retain) NSArray * ViewCollors;
/** button背景图片*/
@property (nonatomic,retain) NSString * backImage;
/** 切换界面加在哪个控制器上*/
@property (nonatomic,retain) UIViewController * addControll;
/** tabbar背景图片*/
@property (nonatomic,copy) NSString * itemBackImage;
/** 设置字体正常颜色*/
@property (nonatomic,retain) UIColor * textColor;
/** 设置字体被选中的颜色*/
@property (nonatomic,retain) UIColor * SelectTextColor;

@end
