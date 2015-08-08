//
//  ViewController.m
//  NemoTabBar
//
//  Created by LiuDongQi on 15/8/7.
//  Copyright (c) 2015年 Nemo. All rights reserved.
//

#import "ViewController.h"
#import "NemoTabBar.h"
#import "oneViewController.h"
#import "twoViewController.h"
#import "TherrViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor brownColor];

    oneViewController * one = [[oneViewController alloc] init];
    
    twoViewController * two = [[twoViewController alloc] init];
    
    TherrViewController * therr = [[TherrViewController alloc] init];
    
    FourViewController * four = [[FourViewController alloc] init];
    
    
    FiveViewController * five = [[FiveViewController alloc] init];
    
    
    NemoTabBar * tabBar  = [[NemoTabBar alloc] init];
//    tabBar.backImage = @"6@2x.png";
    
    tabBar.iconImage = @[@"crown@2x.png",@"home@2x.png",@"shop@2x.png",@"my@2x.png",@"search@2x.png"];
    tabBar.selectIconImage = @[@"crownSelect@2x.png",@"homeSelect@2x.png",@"shopSelect@2x.png",@"mySelect@2x.png",@"searchSelect@2x.png"];
    
    tabBar.tabBarTitle = @[@"首页",@"好哇好哇",@"何如何",@"我",@"收索"];
    
    tabBar.ViewCollors = @[one,two,therr,four];
    
    tabBar.addControll = self;
    
//    tabBar.textColor = [UIColor yellowColor];
//    tabBar.SelectTextColor = [UIColor purpleColor];
//    tabBar.itemBackImage = @"0.JPG";
    [self.view addSubview:tabBar];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
