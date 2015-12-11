//
//  SecondViewController.m
//  01-UIPresentationViewController
//
//  Created by jiaguanglei on 15/12/11.
//  Copyright © 2015年 roseonly. All rights reserved.
//

#import "SecondViewController.h"
#import "UIView+Extension.h"
@interface SecondViewController (){
    UIButton *_btn;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:_btn];
    _btn.frame = CGRectMake(0, 0, 100, 100);
    _btn.center = self.view.center;
    _btn.backgroundColor = [UIColor blackColor];
    

    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
