//
//  EOCScrollView.m
//  04-事件运用和冲突 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/26.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCScrollView.h"

@implementation EOCScrollView


//self.view它会包含scrollView，pointInside会先找到self.view->YES->遍历self.view的子view

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    
    CGRect rect = self.bounds;
    rect.origin.x -= 20.f; //让响应区域x变大
    rect.size.width = [UIScreen mainScreen].bounds.size.width;  //让响应的区域宽度变大
    if (CGRectContainsPoint(rect, point)) {
        return YES;
    }
    
    return [super pointInside:point withEvent:event];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCScrollView touchBegan");
    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCScrollView touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCScrollView touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCScrollView touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}

@end
