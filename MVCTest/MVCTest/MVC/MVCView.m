//
//  MVCView.m
//  MVCTest
//
//  Created by Apple on 2017/4/11.
//  Copyright © 2017年 YYSheng. All rights reserved.
//
#define kScreenSize [UIScreen mainScreen].bounds.size

#import "MVCView.h"

@interface MVCView ()

@property (nonatomic, strong) UILabel *      tipLabel;
@property (nonatomic, strong) UIButton *     printButton;

@end

@implementation MVCView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        self.tipLabel = [[UILabel alloc]initWithFrame:CGRectMake(40, 100, kScreenSize.width-80, 30)];
        [self addSubview:self.tipLabel];
        self.tipLabel.layer.borderColor = [UIColor grayColor].CGColor;
        self.tipLabel.layer.borderWidth = 1;
        self.tipLabel.layer.cornerRadius = 3;
        self.tipLabel.text = @"点击按钮改变我";
        self.tipLabel.layer.masksToBounds = YES;
        self.tipLabel.font = [UIFont boldSystemFontOfSize:20];
        self.tipLabel.textAlignment = NSTextAlignmentCenter;
        self.tipLabel.textColor = [UIColor grayColor];
        self.printButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 180, kScreenSize.width-200, 40)];
        [self addSubview:self.printButton];
        self.printButton.backgroundColor = [UIColor whiteColor];
        self.printButton.layer.borderColor = [UIColor grayColor].CGColor;
        self.printButton.layer.borderWidth = 1;
        self.printButton.layer.cornerRadius = 5;
        self.printButton.layer.masksToBounds = YES;
        [self.printButton setTitle:@"changeVlue" forState:UIControlStateNormal];
        [self.printButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [self.printButton setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
        [self.printButton addTarget:self action:@selector(changeVlueClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
- (void)printOnView:(NSString *)name{
    self.tipLabel.text = name;
}
- (void)changeVlueClick{
    if (self.delegate) {
        [self.delegate onPrintButtonClick];
    }
}

@end
