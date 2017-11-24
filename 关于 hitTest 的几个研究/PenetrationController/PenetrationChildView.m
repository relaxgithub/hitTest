//
//  PenetrationChildView.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

#import "PenetrationChildView.h"

@implementation PenetrationChildView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.userInteractionEnabled = NO;// 关闭交互，让此SuperView 的递归 hitTest 直接返回 nil。决定让父视图来处理这个事件。
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",@"子视图被点击!");
}

@end
