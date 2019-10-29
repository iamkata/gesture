//
//  EOCGestureOne.m
//  04-事件运用和冲突 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/26.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCGestureOne.h"

@implementation EOCGestureOne

- (instancetype)initWithTarget:(id)target action:(SEL)action {
    
    self = [super initWithTarget:target action:action];
    
//    self.delegate = self;
    return self;
    
}

//手势已经识别，通过这个方法的返回值，看是否响应
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    
    return YES;
}


//两个手势是否共存（一起响应），A手势和B手势，只要这两个手势有一个手势的这个代理方法返回的YES，那么就是共存
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
//
//    return NO;
//
//}

//互斥用的：gestureRecognizer它要响应，必须得满足otherGestureRecognizer响应失败，才可以，otherGestureRecognizer的优先级最高
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
//
//
//}

//互斥用的：otherGestureRecognizer它要响应，需要gestureRecognizer响应失败，才可以，gestureRecognizer的优先级最高
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
//
//    return YES;
//}

//手势支不支持touch
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    
    return YES;
    
}

@end
