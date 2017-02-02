//
//  CHTVerifyCodeBtn.h
//  CHTVerifyCodeBtnDemo
//
//  Created by cht on 17/2/2.
//  Copyright © 2017年 Roy Chan. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 验证码按钮，自动倒计时
 */
@interface CHTVerifyCodeBtn : UIButton

//按钮的点击事件中调用，开始倒计时，倒计时结束后会自动返回初始状态
- (void)timeFireBeginFrom:(NSUInteger)startCount;

@end
