//
//  ViewController.m
//  04-事件运用和冲突 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/26.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "ViewController.h"
#import "EOCEventMultiGestureViewController.h"
#import "EOCEventCase_ScrollView.h"
#import "EOCEventCase_ScreenGesture.h"
#import "EOCEventCase_UISlider.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *cellTextArr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"八点钟学院";
    
    cellTextArr = @[@"多手势分析", @"UIScrollView的触摸案例和事件处理", @"UIScreenPanGesture", @"UISlider的事件处理"];
    
    UITableView *mainTable = [[UITableView alloc] initWithFrame:CGRectMake(0.f, 64.f, self.view.eocW, self.view.eocH-64.f) style:UITableViewStylePlain];
    mainTable.delegate = self;
    mainTable.dataSource = self;
    mainTable.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:mainTable];
    
}

#pragma mark - UITableView delegate&&datasource method
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return cellTextArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    cell.textLabel.text = cellTextArr[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (0 == indexPath.row) {
        
        //多手势共存问题
        EOCEventMultiGestureViewController *viewCtrl = [[EOCEventMultiGestureViewController alloc] init];
        [self.navigationController pushViewController:viewCtrl animated:YES];
        
    } else if (1 == indexPath.row) {
        
        //触摸案例：scrollView滑动，两边空白也能滑动
        EOCEventCase_ScrollView *viewCtrl = [[EOCEventCase_ScrollView alloc] init];
        [self.navigationController pushViewController:viewCtrl animated:YES];
        
    } else if (2 == indexPath.row) {
        
        EOCEventCase_ScreenGesture *viewCtrl = [[EOCEventCase_ScreenGesture alloc] init];
        [self.navigationController pushViewController:viewCtrl animated:YES];
        
    } else if (3 == indexPath.row) {
        
        //UISlider的事件处理
        EOCEventCase_UISlider *viewCtrl = [[EOCEventCase_UISlider alloc] init];
        [self.navigationController pushViewController:viewCtrl animated:YES];
        
    }
}

@end
