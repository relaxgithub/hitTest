//
//  PenetrationSuperView.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

#import "PenetrationSuperView.h"

@implementation PenetrationSuperView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",@"父视图被点击!");
}


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    // 1. 判断当前视图是否可以交互。
    // 如果当前视图无法交互，事件传递信号在这里就被终止了。
    // 从而影响此视图内的所有子视图，都将变成无法交互的状态。
    if (self.userInteractionEnabled == NO || self.alpha < 0.01 || self.hidden == YES) return nil;
    
    // 2. 判断当前的触摸点是否在当前视图的 bounds 里。
    if (![self pointInside:point withEvent:event]) return nil;
    
    // 3. 达到这一步，就说明，当前视图开启了交互，且触摸点在这个视图里。
    for (UIView *view in self.subviews) {
        // 4. 转换点坐标，把父亲视图里的 point 转换为相对于当前 subView 视图的坐标系的点
        CGPoint p2 = [self convertPoint:point toView:view];
        // 开始循环递归，找到当前(self)最合适处理这个事件的子视图。
        UIView *fitView = [super hitTest:p2 withEvent:event];
        if (fitView) {
            return fitView;
        }
    }

    // 否则返回自己，来处理这个事件。
    /**
     情况有2种
     1. 当前 self 中，不包含任何子视图
     2. 当前 self 中，子视图都不能被交互 (userInteractionEnabled == NO || Aplha < 0.01 || hidden == YES)
     */
    return self;
}


@end
