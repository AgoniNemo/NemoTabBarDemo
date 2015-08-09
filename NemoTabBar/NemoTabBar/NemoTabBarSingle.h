//
//  NemoTabBarSingle.h
//  NemoTabBar
//
//  Created by qf on 15/8/9.
//  Copyright (c) 2015年 Nemo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NemoTabBar.h"

@interface NemoTabBarSingle : NSObject

@property (nonatomic,retain) NemoTabBar * nemoTabBar;

+(NemoTabBarSingle *)saveNemoTabBarSingle;

@end
