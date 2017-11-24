//
//  GreenView.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

#import "GreenView.h"

@implementation GreenView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",@"GreenView has been clicked!");
}

@end
