//
//  UIView+frame.h
//  CodeFor两种改变子视图位置的方式
//
//  Created by relax on 2017/11/9.
//  Copyright © 2017年 relax. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (frame)

@property (nonatomic,assign) CGFloat rl_x;
@property (nonatomic,assign) CGFloat rl_y;
@property (nonatomic,assign) CGFloat rl_width;
@property (nonatomic,assign) CGFloat rl_height;
@property (nonatomic,assign) CGFloat rl_centerX;
@property (nonatomic,assign) CGFloat rl_centerY;

@property (nonatomic,assign) CGFloat rl_boundsX;
@property (nonatomic,assign) CGFloat rl_boundsY;

@end
