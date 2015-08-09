//
//  testViewController.m
//  NemoTabBar
//
//  Created by qf on 15/8/9.
//  Copyright (c) 2015年 Nemo. All rights reserved.
//

#import "testViewController.h"

@interface testViewController ()

@end

@implementation testViewController


-(void)viewWillAppear:(BOOL)animated{

// self.navigationController.navigationBarHidden= YES;

}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    UIView * view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor = [UIColor yellowColor];
    
    NSLog(@"%@",NSStringFromCGRect(view.bounds));
    
    [self.view addSubview:view];
    
    
    
    
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
