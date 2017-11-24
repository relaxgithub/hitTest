//
//  BlueAlphaView.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

#import "BlueAlphaView.h"

@implementation BlueAlphaView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",@"半透明蓝色，后加的 View 有优先权！");
}


//// 解决方法一
//- (void)awakeFromNib {
//    [super awakeFromNib];
//    self.userInteractionEnabled = NO;
//}
// 解决方法二：可以重写此 view 的 hitTest 直接返回 nil，让递归进行到后面的GreenView 上去
//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    return nil;
//}

// 解决办法三、重写 pointInside 返回 NO
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    return NO;
}

@end
