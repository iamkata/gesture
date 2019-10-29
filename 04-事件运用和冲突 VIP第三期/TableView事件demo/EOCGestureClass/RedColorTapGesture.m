//
//  EOCTapGesture.m
//  事件层次分析
//
//  Created by 八点钟学院 on 2017/3/16.
//  Copyright © 2017年 八点钟学院. All rights reserved.
//

#import "RedColorTapGesture.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation RedColorTapGesture

- (instancetype)initWithTarget:(id)target action:(SEL)action {
    
    self = [super initWithTarget:target action:action];
    self.delegate = self;
    return self;
    
}


//- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
//
//    //找到你这个手势的view，如果这个view是cell，那么手势不响应
//    UIView *view = gestureRecognizer.view;  //gestureRecognizer.view = 永远获取的是你这个手势绑定的view，所以否决
//
//
//    return NO;
//}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    
    UIView *view = touch.view;
    
    //如果点击的了cell 就返回NO
    //实现点击cell调用didselectedCell方法,不调用tap方法
    return ![view isKindOfClass:NSClassFromString(@"UITableViewCellContentView")];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{    
    NSLog(@"RedColorTapGesture touchBegan ");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"RedColorTapGesture touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"RedColorTapGesture touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"RedColorTapGesture touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}

@end
