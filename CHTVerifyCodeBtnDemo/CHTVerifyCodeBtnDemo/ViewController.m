//
//  ViewController.m
//  CHTVerifyCodeBtnDemo
//
//  Created by cht on 17/1/26.
//  Copyright © 2017年 Roy Chan. All rights reserved.
//

#import "ViewController.h"
#import "CHTVerifyCodeBtn.h"
@interface ViewController ()<CHTVerifyCodeBtnDelegate>

@property (weak, nonatomic) IBOutlet CHTVerifyCodeBtn *testBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _testBtn.delegate = self;
}


- (IBAction)btnClick:(CHTVerifyCodeBtn *)btn {
    
    [btn timeFireBeginFrom:10];
    
    //Do some other thing
    
}

#pragma mark - CHTVerifyCodeBtnDelegate
- (void)verifyCodeBtn:(CHTVerifyCodeBtn *)verifyCodeBtn didFireWithTimeCount:(NSUInteger)timeCount{
    
    if (verifyCodeBtn == _testBtn) {
        
        NSLog(@"****%lu****",timeCount);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
