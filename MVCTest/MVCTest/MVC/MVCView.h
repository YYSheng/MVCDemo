//
//  MVCView.h
//  MVCTest
//
//  Created by Apple on 2017/4/11.
//  Copyright © 2017年 YYSheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVCViewDelegate <NSObject>

- (void)onPrintButtonClick;

@end

@interface MVCView : UIView

- (void)printOnView:(NSString *)name;
@property (nonatomic, weak) id<MVCViewDelegate> delegate;

@end
