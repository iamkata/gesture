//
//  EOCEventMultiGestureViewController.m
//  04-事件运用和冲突 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/26.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCEventMultiGestureViewController.h"
#import "EOCViewOne.h"
#import "EOCViewTwo.h"
#import "EOCGestureOne.h"
#import "EOCGestureTwo.h"

@interface EOCEventMultiGestureViewController ()

@end

@implementation EOCEventMultiGestureViewController


- (void)viewDidLoad {
    
    self.view.backgroundColor = [UIColor whiteColor];
    [super viewDidLoad];
    [self createTwoView];
    
}

- (void)createTwoView {
    
    //如果hitTest和pointInside找到了这个view，那么view或者父view上的手势都会响应
    //两个手势  互斥和共存的问题：1、在yellowView上滑动，我希望redView上的手势响应，yellowView上不响应（现在的情况是yellowView上响应，redView上不响应）
    
    EOCViewOne *redView = [[EOCViewOne alloc] initWithFrame:CGRectMake(100.f, 100.f, 100.f, 100.f)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    EOCViewTwo *yellowView = [[EOCViewTwo alloc] initWithFrame:CGRectMake(10.f, 10.f, 80.f, 80.f)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [redView addSubview:yellowView];
    
    
    EOCGestureOne *gestureOne = [[EOCGestureOne alloc] initWithTarget:self action:@selector(redViewAction)];
    [redView addGestureRecognizer:gestureOne];
    
    EOCGestureTwo *gestureTwo = [[EOCGestureTwo alloc] initWithTarget:self action:@selector(yellowViewAction)];
    [yellowView addGestureRecognizer:gestureTwo];
    
    //让gestureOne优先级变高，其中的一种方法
//    [gestureTwo requireGestureRecognizerToFail:gestureOne];
    
}

#pragma mark - gesture actions
- (void)redViewAction {
    
    NSLog(@"%s", __func__);
}

- (void)yellowViewAction {
    
    NSLog(@"%s", __func__);
}

@end
