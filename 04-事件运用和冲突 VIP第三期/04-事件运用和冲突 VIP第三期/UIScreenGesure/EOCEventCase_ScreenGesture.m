//
//  EOCEventCase_ScreenGesture.m
//  04-事件运用和冲突 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/26.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCEventCase_ScreenGesture.h"

@interface EOCEventCase_ScreenGesture () {
    
    CGFloat center_x;
    CGFloat center_y;
    
}

@property(nonatomic, strong)UIView *backgroundView;
@property(nonatomic, strong)UIView *showView;

@end

@implementation EOCEventCase_ScreenGesture

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"UIScreenPanGesture";
    
    
    center_x = self.view.bounds.size.width/2;
    center_y = self.view.bounds.size.height/2;
    
    [self.view addSubview:self.backgroundView];
    [self.backgroundView addSubview:self.showView];
    [self createScreenGestureView];
    
}

- (void)createScreenGestureView {
    
    UIScreenEdgePanGestureRecognizer *screenEdgePanGesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
    
    //EdgePanGestureRecognizer优先级最高
    NSArray *gestureArray = self.navigationController.view.gestureRecognizers;
    for (UIGestureRecognizer *gesture in gestureArray) {
        
        if ([gesture isKindOfClass:[UIScreenEdgePanGestureRecognizer class]]) {
            
            [gesture requireGestureRecognizerToFail:screenEdgePanGesture];
            
        }
        
    }
    
    screenEdgePanGesture.edges = UIRectEdgeRight;
    [self.showView addGestureRecognizer:screenEdgePanGesture];
    
}

#pragma mark - event response
- (void)panAction:(UIScreenEdgePanGestureRecognizer *)gesture
{
    UIView *view = [self.view hitTest:[gesture locationInView:gesture.view] withEvent:nil];
    NSLog(@"view.tag %ld, gesture.view %ld", view.tag, gesture.view.tag);
    
    if (UIGestureRecognizerStateBegan == gesture.state || UIGestureRecognizerStateChanged == gesture.state) {
        
        CGPoint translationPoint = [gesture translationInView:gesture.view];
        
        _backgroundView.center = CGPointMake(center_x+translationPoint.x, center_y);
        
    } else {
        
        [UIView animateWithDuration:.3f animations:^{
            
            _backgroundView.center = CGPointMake(center_x, center_y);
            
        }];
        
    }
}

#pragma mark get method
- (UIView *)showView {
    
    if (!_showView) {
        
        _showView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, self.view.frame.size.width, 200.f)];
        _showView.tag = 100;
        _showView.backgroundColor = [UIColor redColor];
        
    }
    
    return _showView;
    
}

- (UIView *)backgroundView {
    
    if (!_backgroundView) {
        
        _backgroundView = [[UIView alloc] initWithFrame:self.view.bounds];
        _backgroundView.tag = 101;
        _backgroundView.backgroundColor = [UIColor yellowColor];
        
    }
    
    return _backgroundView;
}

@end
