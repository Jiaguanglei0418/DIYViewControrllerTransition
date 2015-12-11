//
//  ROAnimatedTransition.m
//  01-UIPresentationViewController
//
//  Created by jiaguanglei on 15/12/11.
//  Copyright © 2015年 roseonly. All rights reserved.
//

#import "ROAnimatedTransition.h"
#import "UIView+Extention/UIView+Extension.h"

#define TA_TimeInterval .8

@implementation ROAnimatedTransition

#pragma mark - UIViewControllerAnimatedTransitioning
// This is used for percent driven interactive transitions, as well as for container controllers that have companion animations that might need to
// synchronize with the main animation.
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return TA_TimeInterval;
}

// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{

    if(self.presented){ // presented
        UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
        
        // ****    1. 设置从上到下效果  *****
//        toView.y = -toView.height;
        // ****    2. 设置从左到右效果  *****
        toView.x = -toView.width;
        
        // ****    3. 设置3D效果  *****
        // 绕Y轴旋转 360
//        toView.layer.transform = CATransform3DMakeRotation(M_PI_2 * 3, 0, 0, 1);
//        toView.layer.transform = CATransform3DMakeScale(.2, .2, 1);
        
        [UIView animateWithDuration:TA_TimeInterval animations:^{
            
            // 执行动画
//            toView.y = 0; // 从上到下
            toView.x = 0; // 从左到右
            
//            toView.layer.transform = CATransform3DIdentity;
        } completion:^(BOOL finished) {
            
            // 必须设置, 完成动画
            [transitionContext completeTransition:YES];
        }];
    }else{ // dismiss
        UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
        
        [UIView animateWithDuration:TA_TimeInterval animations:^{
            // *****  设置从上往下的效果  ********
            // 之前的toView就是现在的fromView, 之前y = 0, 要实现从上而下的效果, 只要目标y 变为fromView的高度即可
//            fromView.y = fromView.height;// 从上到下
            fromView.x = -fromView.width;// 从左到右
            
//            fromView.layer.transform = CATransform3DMakeRotation(M_PI_2 * 3, 0, 0, 1);
//            fromView.layer.transform = CATransform3DMakeScale(0.2, 0.2, 1);
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
}

@end
