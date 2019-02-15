//
//  CustomScrollView.m
//  滚动视图
//
//  Created by JH on 2019/2/15.
//  Copyright © 2019 JH. All rights reserved.
//

#import "CustomScrollView.h"

@implementation CustomScrollView

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    CGRect frame = self.bounds;
    
    frame.origin.x -= 20;
    frame.size.width = [UIScreen mainScreen].bounds.size.width;
    
    if (CGRectContainsPoint(frame, point)) {
        return YES;
    }
    return [super pointInside:point withEvent:event];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
