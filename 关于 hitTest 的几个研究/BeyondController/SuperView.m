//
//  SuperView.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",@"SuperView Has Been Clicked!");
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    if (!view) { // 返回 nil 了，无法就是点不在你的范围，但并不代表点不在你的子视图范围内。
        for (UIView *subView in self.subviews) {
            CGPoint p = [self convertPoint:point toView:subView];
            if (CGRectContainsPoint(subView.bounds, p)) {
                return subView;
            }
        }
    }
    
    return view;
}

@end
