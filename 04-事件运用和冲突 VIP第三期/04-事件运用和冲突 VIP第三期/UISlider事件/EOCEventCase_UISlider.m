//
//  EOCEventCase_UISlider.m
//  04-事件运用和冲突 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/26.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCEventCase_UISlider.h"

@interface EOCEventCase_UISlider ()

@property(nonatomic, strong)UIScrollView *scrollView;
@property(nonatomic, strong)UISlider *slider;

@end

@implementation EOCEventCase_UISlider

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"UISlider的事件处理";
    
    [self.view addSubview:self.scrollView];
    [self.scrollView addSubview:self.slider];
    
    //实现滑动sliderView后面的scrollView不滑动
    self.scrollView.delaysContentTouches = NO;
    self.scrollView.canCancelContentTouches = NO;
    
}


#pragma mark - event response
- (void)valueChange
{
    NSLog(@"valueChange");
}


#pragma mark - getter方法
- (UIScrollView *)scrollView
{
    if (!_scrollView) {
        
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.f, 0.f, self.view.eocW, self.view.eocH)];
        _scrollView.backgroundColor = [UIColor lightGrayColor];
        _scrollView.contentSize = CGSizeMake(2*self.view.eocW, self.view.eocH);
        
    }
    
    return _scrollView;
}

- (UISlider *)slider {
    
    if (!_slider) {
        
        _slider = [[UISlider alloc] initWithFrame:CGRectMake(50.f, 100.f, 200.f, 40.f)];
        [_slider addTarget:self action:@selector(valueChange) forControlEvents:UIControlEventValueChanged];
        
    }
    
    return _slider;
}

@end
