//
//  NemoTabBarSingle.m
//  NemoTabBar
//
//  Created by qf on 15/8/9.
//  Copyright (c) 2015年 Nemo. All rights reserved.
//

#import "NemoTabBarSingle.h"

@implementation NemoTabBarSingle

+(NemoTabBarSingle *)saveNemoTabBarSingle{

    static NemoTabBarSingle * nts = nil;
    
    if (nts == nil) {
        nts = [[NemoTabBarSingle alloc] init];
    }
    return nts;
}

@end
