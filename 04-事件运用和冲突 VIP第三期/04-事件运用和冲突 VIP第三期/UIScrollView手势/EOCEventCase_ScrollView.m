//
//  EOCEventCase_ScrollView.m
//  04-事件运用和冲突 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/26.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCEventCase_ScrollView.h"
#import "EOCScrollView.h"
#import "EOCLightGrayView.h"
#import "EOCView.h"

@interface EOCEventCase_ScrollView () {
    NSArray *imageArr;
}

@property(nonatomic, strong)EOCLightGrayView *lightGrayView;
@property(nonatomic, strong)EOCView *customView;
@end

@implementation EOCEventCase_ScrollView

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"UIScrollView的触摸案例和事件处理";
    imageArr = @[@"0", @"1", @"2", @"3", @"4"];
    
    //[self testScrollViewEvent];
    [self scrollViewDemo];
    
}

- (void)scrollViewDemo {
    
    NSInteger count = 5;
    self.view.clipsToBounds = YES; //侧滑返回不显示图片,裁剪
    
    EOCScrollView *scrollView = [[EOCScrollView alloc] initWithFrame:CGRectMake(20.f, 100.f, self.view.eocW-60.f, (self.view.eocW-80.f)/2)];
    scrollView.pagingEnabled = YES;
    scrollView.contentSize = CGSizeMake((self.view.eocW-60.f)*5, (self.view.eocW-80.f)/2);
    scrollView.clipsToBounds = NO;  //不自动裁剪,好让左右都显示
    [self.view addSubview:scrollView];
    
    // 手势的互斥 滑动手势优先级大于左侧滑返回
    [self.navigationController.interactivePopGestureRecognizer requireGestureRecognizerToFail:scrollView.panGestureRecognizer];
    
    //添加图片
    for (int i =0; i<count; i++) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20.f+i*(self.view.eocW-60.f), 0.f, self.view.eocW-80.f, (self.view.eocW-80.f)/2)];
        imageView.image = [UIImage imageNamed:imageArr[i]];
        [scrollView addSubview:imageView];
        
    }
    
}


- (void)testScrollViewEvent {
    
    [self.view addSubview:self.lightGrayView];
    EOCScrollView *scrollView = [[EOCScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(self.view.eocW, 2*self.view.eocH);
    
    
    scrollView.backgroundColor = [UIColor redColor];
    
    //这两个属性控制滑动白色ViewxscrollView不动,滑动其他部分scrollView动
    //类似于scrollView上添加sliderView
    scrollView.delaysContentTouches = NO;
    scrollView.canCancelContentTouches = NO;
    
    [self.lightGrayView addSubview:scrollView];
    
    
    //点击customView最后面的lightGrayView不会调用touchBegin方法,因为scrollView内部给阻止了
    //如果想要调可以重写
//    - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//    {
//        NSLog(@"EOCScrollView touchBegan");
//        [self.nextResponder touchesBegan:touches withEvent:event];
//    }
    [scrollView addSubview:self.customView];
    
}

- (void)btnAction {
    
    NSLog(@"btnAction");
    
}

- (EOCView *)customView {
    
    if (!_customView) {
        
        _customView = [[EOCView alloc] initWithFrame:CGRectMake(0.f, 100.f, self.view.eocW, (self.view.eocW-60.f)/2)];
        _customView.backgroundColor = [UIColor whiteColor];
    }
    return _customView;
    
}

@end
