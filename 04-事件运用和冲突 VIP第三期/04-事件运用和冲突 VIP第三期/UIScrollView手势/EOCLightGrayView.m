//
//  EOCViewOne.m
//  事件层次分析
//
//  Created by 八点钟学院 on 2017/3/15.
//  Copyright © 2017年 八点钟学院. All rights reserved.
//

#import "EOCLightGrayView.h"


@implementation EOCLightGrayView

- (void)layoutSubviews
{
    self.backgroundColor = [UIColor lightGrayColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCLightGrayView touchBegan");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCLightGrayView touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCLightGrayView touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"EOCLightGrayView touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}

@end
