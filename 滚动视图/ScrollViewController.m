//
//  ScrollViewController.m
//  滚动视图
//
//  Created by JH on 2019/2/15.
//  Copyright © 2019 JH. All rights reserved.
//

#import "ScrollViewController.h"
#import "CustomScrollView.h"

@interface ScrollViewController ()
{
    
    NSArray *imageArr;
    
}
@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    imageArr = @[ @"1", @"2", @"3", @"4",@"5"];
    [self learnScrollView];
}

-(void)learnScrollView{
    
    
    self.view.clipsToBounds = YES; // 超过view范围的不显示
    
    CustomScrollView * scrollView = [[CustomScrollView alloc] initWithFrame:CGRectMake(20.f, 150.f, self.view.frame.size.width - 60, (self.view.frame.size.width - 80)*0.5)];
    scrollView.contentSize = CGSizeMake((self.view.frame.size.width - 60)*5, (self.view.frame.size.width - 80)*0.5);
    scrollView.clipsToBounds = NO;//超过scrollView范围也能显示
    scrollView.pagingEnabled = YES;
    for (int i = 0; i < 5; i++) {
        UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20 + (self.view.frame.size.width - 60) *i, 0, (self.view.frame.size.width - 80), (self.view.frame.size.width - 80)/2)];
        imageView.image = [UIImage imageNamed:imageArr[i]];
        [scrollView addSubview:imageView];
    }
    [self.view addSubview:scrollView];
    
    //scrollView手势的优先级高于interactivePopGestureRecognizer
    //防止滑动scrollView时退出Controller
    [self.navigationController.interactivePopGestureRecognizer requireGestureRecognizerToFail:scrollView.panGestureRecognizer];
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
