//
//  本节课课程大纲.h
//  04-事件运用和冲突 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/26.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#ifndef ________h
#define ________h

1、上堂课遗留的一个案例，超出父view边界的button，能够点击
2、手势的互斥和共存：手势代理方法，非代理也能实现互斥，所谓互斥就是找到优先级最高的手势
3、UIScrollView：clipToBounds、增加scrollView滑动的响应区域、scrollView的手势和navigationController手势互斥
4、基类里有手势，子类里有tableView：1、tableView的点击事件能够和手势一起响应；2、点击事件响应，手势不响应
5、scrollView的两个属性，通过这两个属性能达到当我点击scrollView的子view的时候，scrollView不滑动
6、UISlider结合第5点的应用
7、UIScreenEdgePanGestureRecognizer的介绍，主要有一个edges


作业题：在可拉伸头部控件的demo里，添加一个button，让button能点击啊，实现它。


#endif /* ________h */
