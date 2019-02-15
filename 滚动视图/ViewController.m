//
//  ViewController.m
//  滚动视图
//
//  Created by JH on 2019/2/15.
//  Copyright © 2019 JH. All rights reserved.
//

#import "ViewController.h"
#import "ScrollViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor grayColor]];
    button.frame = CGRectMake(100.f, 100.f, 100.f, 100.f);
    [button addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)btn{
    ScrollViewController *vc = [ScrollViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
