//
//  EOCBaseFctVCtr.m
//  EOCGestureClass
//
//  Created by EOC on 2017/7/29.
//  Copyright © 2017年 EOC. All rights reserved.
//

#import "EOCBaseFctVCtr.h"


@interface EOCBaseFctVCtr ()

@end

@implementation EOCBaseFctVCtr

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //1、手势和tableView的touch都响应
    //2、手势不响应，tableView的touch响应
    
    _tapGesture = [[RedColorTapGesture alloc] initWithTarget:self action:@selector(tapGestureEvent:)];
    _tapGesture.cancelsTouchesInView = NO;  //如果为YES，手势识别了，会取消touch事件
    [self.view addGestureRecognizer:_tapGesture];
    
    
    ///当我点击cell的时候，我希望手势禁止掉
    
}


- (void)tapGestureEvent:(UITapGestureRecognizer*)gesture{
    
    NSLog(@"2222");
    
}


@end
