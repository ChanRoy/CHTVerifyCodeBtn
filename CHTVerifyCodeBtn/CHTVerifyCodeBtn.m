//
//  CHTVerifyCodeBtn.m
//  CHTVerifyCodeBtnDemo
//
//  Created by cht on 17/2/2.
//  Copyright © 2017年 Roy Chan. All rights reserved.
//

#import "CHTVerifyCodeBtn.h"
#import "UIColor+CHTExtend.h"

@interface CHTVerifyCodeBtn ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) NSUInteger count;

@end

@implementation CHTVerifyCodeBtn

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    
    //KVC设置按钮状态，默认状态下按钮刷新标题时会闪烁
    [self setValue:@(UIButtonTypeCustom) forKey:@"buttonType"];
    [self setTitle:@"獲取驗證碼" forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont systemFontOfSize:12.0f];
    [self setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithHexString:@"#999999"] forState:UIControlStateDisabled];
    self.backgroundColor = [UIColor colorWithHexString:@"#f5f5f5"];
    self.layer.cornerRadius = 4;
}

//开始倒计时
- (void)timeFireBeginFrom:(NSUInteger)startCount{
    
    [self stopTimer];
    
    _count = startCount;
    [self setTitle:[NSString stringWithFormat:@"(%lus)后重发",(unsigned long)_count] forState:UIControlStateDisabled];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    
    self.enabled = NO;
}

//计时器倒数
- (void)timerFired{
    
    if (--_count != 0) {
        
        [self setTitle:[NSString stringWithFormat:@"(%lus)后重发",(unsigned long)_count] forState:UIControlStateDisabled];
    }else{
        
        self.enabled = YES;
        [self setTitle:@"獲取驗證碼" forState:UIControlStateNormal];
        [_timer invalidate];
        _timer = nil;
    }
}

//销毁timer
- (void)stopTimer{
    
    if (_timer != nil) {
        
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)dealloc{
    
    [self stopTimer];
}


@end
