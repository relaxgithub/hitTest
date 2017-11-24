//
//  PenetrationController.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

/**
 穿透有2中形式：
 1. 第一种，父子关系。
    时间响应链，从下到上，经过了父 -> 子的过程。
    如果子元素关闭交互，那么父视图就可以负责交互了。
 */

#import "PenetrationController.h"
#import "PenetrationChildView.h"

@interface PenetrationController ()
@property (weak, nonatomic) IBOutlet PenetrationChildView *childView;

@end

@implementation PenetrationController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
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
