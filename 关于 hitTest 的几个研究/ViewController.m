//
//  ViewController.m
//  关于 hitTest 的几个研究
//
//  Created by relax on 2017/11/22.
//  Copyright © 2017年 relax. All rights reserved.
//

#import "ViewController.h"
#import "UIView+frame.h"
#import "BeyondBounsController.h"
#import "PenetrationController.h"
#import "EnLargeController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@end

static NSString *const reuseIdentifierCellID = @"reuseIdentifierCellID";

@implementation ViewController {
    NSArray<NSString *> *_dataList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _dataList = @[@"子元素超出父元素边界之外可以交互",@"穿透",@"扩大子元素的点击范围"];
    [self prepareTableView];
}

- (void)prepareTableView {
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    // tableView.rl_y = 20;
   
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseIdentifierCellID];
    
    [self.view addSubview:tableView];
    
    tableView.dataSource = self;
    tableView.delegate = self;
}

#pragma mark - UITableViewDataSource & UITableDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifierCellID forIndexPath:indexPath];
    
    cell.textLabel.text = _dataList[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            BeyondBounsController *beyondVC = [[BeyondBounsController alloc] init];
            
            [self.navigationController pushViewController:beyondVC animated:YES];
            
        }
            break;
            
        case 1:
        {
            PenetrationController *penetrationVC = [[PenetrationController alloc] init];
            
            [self.navigationController pushViewController:penetrationVC animated:YES];
            
        }
            break;

        case 2:
        {
            EnLargeController *enlargeVC = [[EnLargeController alloc] init];
            
            [self.navigationController pushViewController:enlargeVC animated:YES];
            
        }
            break;
            
            
        default:
            break;
    }
}

@end
