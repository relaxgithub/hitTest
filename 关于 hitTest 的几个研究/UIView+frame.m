//
//  UIView+frame.m
//  CodeFor两种改变子视图位置的方式
//
//  Created by relax on 2017/11/9.
//  Copyright © 2017年 relax. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

- (CGFloat)rl_x {
    return self.frame.origin.x;
}

- (void)setRl_x:(CGFloat)rl_x {
    CGRect frame = self.frame;
    frame.origin.x = rl_x;
    self.frame = frame;
}

- (CGFloat)rl_y {
    return self.frame.origin.y;
}

- (void)setRl_y:(CGFloat)rl_y {
    CGRect frame = self.frame;
    frame.origin.y = rl_y;
    self.frame = frame;
}

- (CGFloat)rl_width {
    return self.frame.size.width;
}

- (void)setRl_width:(CGFloat)rl_width {
    CGRect frame = self.frame;
    frame.size.width = rl_width;
    self.frame = frame;
}

- (CGFloat)rl_height {
    return self.frame.size.height;
}

- (void)setRl_height:(CGFloat)rl_height {
    CGRect frame = self.frame;
    frame.size.height = rl_height;
    self.frame = frame;
}

- (CGFloat)rl_centerX {
    return self.center.x;
}

- (void)setRl_centerX:(CGFloat)rl_centerX {
    CGPoint center = self.center;
    center.x = rl_centerX;
    self.center = center;
}

- (CGFloat)rl_centerY {
    return self.center.y;
}

- (void)setRl_centerY:(CGFloat)rl_centerY {
    CGPoint center = self.center;
    center.y = rl_centerY;
    self.center = center;
}


- (CGFloat)rl_boundsX {
    return self.bounds.origin.x;
}

- (void)setRl_boundsX:(CGFloat)rl_boundsX {
    CGRect bounds = self.bounds;
    bounds.origin.x = rl_boundsX;
    self.bounds = bounds;
}

- (CGFloat)rl_boundsY {
    return self.bounds.origin.y;
}

- (void)setRl_boundsY:(CGFloat)rl_boundsY {
    CGRect bounds = self.bounds;
    bounds.origin.y = rl_boundsY;
    self.bounds = bounds;
}






@end
