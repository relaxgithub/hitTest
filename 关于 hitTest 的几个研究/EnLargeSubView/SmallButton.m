//
//  SmallButton.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

#import "SmallButton.h"

@implementation SmallButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    // 如果，当前视图是唯一的子视图，粗暴的解决办法，直接返回 YES.
//    return YES;
//}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    /*
     上下左右个大20个点。
     */
    // 横向距离扩大20个 pt
    CGFloat minX = -20;
    CGFloat maxX = self.bounds.size.width + 20;
    // 纵向距离扩大20个 pt
    CGFloat minY = -20;
    CGFloat maxY = self.bounds.size.height + 20;
    
    // 只要点击的点在这么个范围，就算是点到了这个按钮
    if ((point.x > minX && point.x < maxX) &&
        (point.y > minY && point.y < maxY)
        ) {
        return YES;
    }
    
    
    
    return NO;
}

@end
