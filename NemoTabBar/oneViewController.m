//
//  oneViewController.m
//  NemoTabBar
//
//  Created by LiuDongQi on 15/8/7.
//  Copyright (c) 2015年 Nemo. All rights reserved.
//

#import "oneViewController.h"
#import "testViewController.h"

@interface oneViewController ()

@end

@implementation oneViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{


    testViewController * test = [[testViewController alloc] init];
    
    test.view.backgroundColor = [UIColor cyanColor];
    
    [self.navigationController pushViewController:test animated:YES];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
