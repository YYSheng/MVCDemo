//
//  ViewController.m
//  MVCTest
//
//  Created by Apple on 2017/4/11.
//  Copyright © 2017年 YYSheng. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** 延时两秒进入Demo */
    __weak typeof(self) weakSelf = self;
    dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0/*延迟执行时间*/ * NSEC_PER_SEC));
    
    dispatch_after(delayTime, dispatch_get_main_queue(), ^{
        MVCController *mvc = [MVCController new];
        [weakSelf presentViewController:mvc animated:YES completion:nil];
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
