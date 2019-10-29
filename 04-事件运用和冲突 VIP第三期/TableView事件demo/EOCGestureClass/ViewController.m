//
//  ViewController.m
//  EOCGestureClass
//
//  Created by EOC on 2017/7/29.
//  Copyright © 2017年 EOC. All rights reserved.
//

#import "ViewController.h"
#import "EOCClassVCtr.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.navigationController pushViewController:[EOCClassVCtr new] animated:YES];
    
}


@end
