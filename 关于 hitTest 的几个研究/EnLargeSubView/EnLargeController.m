//
//  EnLargeController.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

/**
 有时候，一个按钮太小了，用户不好点击。
 我们可以方法当前按钮的响应范围，来让用户比较方便的点击到这个按钮。
 本质是从写此按钮的 pointerInside 方法.
 如果，当期视图就包含这么一个子视图，粗暴的解决方法就是，直接重写 pointInSide 方法，直接返回 YES。
 精细一点的话，可以稍微在上下左右的区域，扩大一点子视图的可点击范围。
 */


#import "EnLargeController.h"

@interface EnLargeController ()

@end

@implementation EnLargeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)smallButtonClicked:(id)sender {
    NSLog(@"%@",@"smallButtonClicked!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
