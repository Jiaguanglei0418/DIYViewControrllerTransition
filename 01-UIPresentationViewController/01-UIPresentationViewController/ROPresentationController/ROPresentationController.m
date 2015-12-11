//
//  ROPresentationController.m
//  01-UIPresentationViewController
//
//  Created by jiaguanglei on 15/12/11.
//  Copyright © 2015年 roseonly. All rights reserved.
//

#import "ROPresentationController.h"

@implementation ROPresentationController


// 开始 转场
- (void)presentationTransitionWillBegin
{
    // 设置
//    self.presentedView.frame = self.containerView.bounds;
    
    // 手动将要展示的View, 添加到容器中
    [self.containerView addSubview:self.presentedView];
    
//    LogRed(@"presentationTransition ---  WillBegin");
}
- (void)presentationTransitionDidEnd:(BOOL)completed
{
//    LogRed(@"presentationTransition ---  DidEnd");
}
- (void)dismissalTransitionWillBegin
{
//    LogRed(@"dismissalTransition --- WillBegin --- ");
}
- (void)dismissalTransitionDidEnd:(BOOL)completed
{
    
    [self.presentedView removeFromSuperview];
//    LogGreen(@"dismissalTransition --- DidEnd --- ");
}

@end
