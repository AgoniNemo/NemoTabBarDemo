//
//  NemoButton.m
//  NemoTabBar
//
//  Created by LiuDongQi on 15/8/7.
//  Copyright (c) 2015年 Nemo. All rights reserved.
//

#import "NemoButton.h"

@interface NemoButton ()

@property (nonatomic,retain) UILabel * label;

@end

@implementation NemoButton

-(void)setHighlighted:(BOOL)highlighted{



}
-(UILabel *)label{

    if (!_label) {
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, self.bounds.size.width, 20)];
        self.label.font = [UIFont systemFontOfSize:11];
        self.label.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:self.label];
    }

    return _label;
}
-(void)setTitleLabel:(NSString *)title{

   self.label.text = title;
    
}
-(void)setTitleColor:(UIColor *)color{

    _label.textColor = color;

}

@end
