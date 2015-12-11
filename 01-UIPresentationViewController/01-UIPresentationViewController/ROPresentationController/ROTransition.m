//
//  ROTransition.m
//  01-UIPresentationViewController
//
//  Created by jiaguanglei on 15/12/11.
//  Copyright © 2015年 roseonly. All rights reserved.
//

#import "ROTransition.h"
#import "ROPresentationController.h"
#import "ROAnimatedTransition.h" // 协议对象 // 设置过渡代理

@implementation ROTransition

SingletonM(ROTransition);


#pragma mark - UIViewControllerTransitioningDelegate
- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source
{
    return [[ROPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}

/**
 *  控制显示动画
 *
 *  @param presented  secondVC
 *  @param presenting 当前VC
 *  @param source
 *
 *  @return 遵守UIViewControllerAnimatedTransitioning协议的动画对象
 */
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    ROAnimatedTransition *AT = [[ROAnimatedTransition alloc] init];
    AT.presented = YES;
    return AT;
}

/**
 *  控制dismiss
 */
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    ROAnimatedTransition *AT = [[ROAnimatedTransition alloc] init];
    AT.presented = NO;
    return AT;
}

@end
