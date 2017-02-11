//
//  CHTVerifyCodeBtn.h
//  CHTVerifyCodeBtnDemo
//
//  Created by cht on 17/2/2.
//  Copyright © 2017年 Roy Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CHTVerifyCodeBtn;

@protocol CHTVerifyCodeBtnDelegate <NSObject>

//倒计时每一秒的回调
- (void)verifyCodeBtn:(CHTVerifyCodeBtn *)verifyCodeBtn didFireWithTimeCount:(NSUInteger)timeCount;

@end

/**
 验证码按钮，自动倒计时
 */
@interface CHTVerifyCodeBtn : UIButton

//倒计时的时间
@property (nonatomic, assign, readonly) NSUInteger timeCount;

@property (nonatomic, weak) id<CHTVerifyCodeBtnDelegate> delegate;

//按钮的点击事件中调用，开始倒计时，倒计时结束后会自动返回初始状态
- (void)timeFireBeginFrom:(NSUInteger)startCount;

@end
