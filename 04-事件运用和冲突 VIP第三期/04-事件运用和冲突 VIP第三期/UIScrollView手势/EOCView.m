//
//  EOCView.m
//  事件运用案例
//
//  Created by 八点钟学院 on 2017/3/20.
//  Copyright © 2017年 八点钟学院. All rights reserved.
//

#import "EOCView.h"

@implementation EOCView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    ///返回来的是eocView
    ///触发我自己的区域的时候，我返回来的是我的子 view：scrollview
//    UIView *tmpView = [super hitTest:point withEvent:event];
//    if (tmpView) {
//
//        tmpView = self.subviews[0];
//
//    }
//    return tmpView;
    
    return [super hitTest:point withEvent:event];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCView touchBegan");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCView touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCView touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCView touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}


@end
