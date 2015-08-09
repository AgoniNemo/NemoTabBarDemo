//
//  NemoTabBar.m
//  NemoTabBar
//
//  Created by LiuDongQi on 15/8/7.
//  Copyright (c) 2015年 Nemo. All rights reserved.
//

#import "NemoTabBar.h"
#import "NemoButton.h"
#import "NemoNavigation.h"

#define screenSize [UIScreen mainScreen].bounds

#define itemColor  self.textColor ? self.textColor : [UIColor lightGrayColor]

#define SelectItemColor  self.SelectTextColor ? self.SelectTextColor : [UIColor redColor]

@interface NemoTabBar ()<UIScrollViewDelegate>
@property (nonatomic,retain) UIImageView * imageView;
@property (nonatomic,retain) UIScrollView * scrollView;
@property (nonatomic,retain) NemoButton * selectButton;
@property (nonatomic,retain) UIViewController * removeView;
@property (nonatomic,retain)UIImageView * backimageView;
@end

@implementation NemoTabBar

-(instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        
    self.frame = screenSize;
    self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

-(void)createButton{
    
    
    
    for (int i = 0 ; i < _ViewCollors.count; i ++) {
        
        NemoButton * button = [NemoButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(i*screenSize.size.width/_ViewCollors.count, 0, screenSize.size.width/_ViewCollors.count, 49);
        [button setTitleLabel:self.tabBarTitle[i]];
        [button setTitleColor:itemColor];
        button.tag = i;
        [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [button setImage:[UIImage imageNamed:_iconImage[i]] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:_selectIconImage[i]] forState:UIControlStateSelected];
        button.imageEdgeInsets = UIEdgeInsetsMake(-8, 0, 0, 0);
        
        [self.backimageView addSubview:button];
        if (i == 0) {
            [self btnClick:button];
        }
    }
}
-(void)btnClick:(NemoButton *)button{
    
    [button setTitleColor:SelectItemColor];
    
    _selectButton.selected = NO;
    _selectButton.userInteractionEnabled = YES;
    if (button != _selectButton) {
        [_selectButton setTitleColor:itemColor];
    }
    button.selected = YES;
    button.userInteractionEnabled = NO;
    
    __weak typeof(self) ws = self;
    [UIView animateWithDuration:0.4 animations:^{
        
        ws.imageView.frame = CGRectMake(screenSize.size.width/_ViewCollors.count*button.tag, 0, screenSize.size.width/_ViewCollors.count, 50);
        
    }];
    _selectButton = button;
    
    [self changeInterface:button.tag];
    
}
-(void)changeInterface:(NSInteger)num{
    
    [_removeView.view removeFromSuperview];
    
    UIViewController * vc = _ViewCollors[num];
    
    UINavigationController * nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    nvc.view.frame = CGRectMake(0, 0,screenSize.size.width, screenSize.size.height-49);
    
    vc.title = _tabBarTitle[num];
    
    [self.addControll.view addSubview:nvc.view];
    
    _removeView = nvc;
    
}

-(void)creatScrollView{
    
    self.backimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, screenSize.size.height-49, screenSize.size.width, 49)];
    self.backimageView.userInteractionEnabled = YES;
    
    if (self.itemBackImage) {
        self.backimageView.image = [UIImage imageNamed:self.itemBackImage];
    }else{
        
        self.backimageView.backgroundColor = [UIColor blackColor];
    }
    
    [self addSubview:self.backimageView];
    

    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, screenSize.size.width/_ViewCollors.count, 49)];
    
    NSString * image = _backImage ? _backImage: @"4@2x.png";
    _imageView.image = [UIImage imageNamed:image];
    
    _imageView.userInteractionEnabled = YES;
    
    [self.backimageView addSubview:_imageView];
    
    [self createButton];
    
}
-(void)layoutSubviews{
    
    [self creatScrollView];

    [super layoutSubviews];
    
    NSLog(@"layoutSubviews");
    
    /** 查看titleLabel.frame*/
//    NSLog(@"%@",NSStringFromCGRect(button.titleLabel.frame));
}

@end
