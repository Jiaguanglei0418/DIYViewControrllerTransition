//
//  ViewController.m
//  01-UIPresentationViewController
//
//  Created by jiaguanglei on 15/12/11.
//  Copyright © 2015年 roseonly. All rights reserved.
//
// UIPresentationViewController:
// 1. 管理所有 modal 出来的VC;
// 2. 管理切换控制器的过程:
//   *
#import "ViewController.h"
#import "SecondViewController.h"
#import "ROTransition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SecondViewController *secVC = [[SecondViewController alloc] init];
    
    // 1. 设置过渡代理
    secVC.transitioningDelegate = [ROTransition sharedROTransition];
    
    // 2. 设置展示样式为 UIModalPresentationCustom
    secVC.modalPresentationStyle = UIModalPresentationCustom;
    // 2.1 设置转场动画样式
//    secVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    // 跳转
    [self presentViewController:secVC animated:YES completion:nil];
}






- (void)dealloc
{
    LogYellow(@"dealloc ------ ");
}
@end
