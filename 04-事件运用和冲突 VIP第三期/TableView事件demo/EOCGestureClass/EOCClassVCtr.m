//
//  EOCClassVCtr.m
//  EOCGestureClass
//
//  Created by EOC on 2017/7/29.
//  Copyright © 2017年 EOC. All rights reserved.
//

#import "EOCClassVCtr.h"
#import "EOCTableView.h"
/*
  定位问题
  缩小范围
*/

@interface EOCClassVCtr ()<UITableViewDelegate, UITableViewDataSource>{
    EOCTableView *_tableview;
}
@end

@implementation EOCClassVCtr

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"八点钟学院";
    
    
    _tableview = [[EOCTableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    
    [self.view addSubview:_tableview];
}


#pragma mark - tableView delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [@(indexPath.row) description];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"didSelectRowAtIndexPath");
}


@end
