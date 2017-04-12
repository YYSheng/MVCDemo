//
//  MVCController.m
//  MVCTest
//
//  Created by Apple on 2017/4/11.
//  Copyright © 2017年 YYSheng. All rights reserved.
//

#import "MVCController.h"
/** C拥有V和M */
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCController ()<MVCViewDelegate>

@property (nonatomic, strong) MVCView *         mvcView;
@property (nonatomic, strong) MVCModel *        mvcModel;

@end

@implementation MVCController
#pragma mark - **************** 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    /** 初始化视图对象 */
    self.mvcView = [MVCView new];
    [self.view addSubview:self.mvcView];
    self.mvcView.frame = self.view.bounds;
    self.mvcView.delegate = self;
    /** 初始化模型对象 */
    self.mvcModel = [MVCModel new];
    
    /** 打印方法 */
    
}
#pragma mark - **************** 协议方法
- (void)onPrintButtonClick{
    int rand = arc4random() % 100;
    self.mvcModel.content = [NSString stringWithFormat:@"line %d",rand];
    [self.mvcView printOnView:self.mvcModel.content];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
