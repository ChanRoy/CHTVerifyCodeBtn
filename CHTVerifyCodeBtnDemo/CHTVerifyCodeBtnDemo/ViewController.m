//
//  ViewController.m
//  CHTVerifyCodeBtnDemo
//
//  Created by cht on 17/1/26.
//  Copyright © 2017年 Roy Chan. All rights reserved.
//

#import "ViewController.h"
#import "CHTVerifyCodeBtn.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)btnClick:(CHTVerifyCodeBtn *)btn {
    
    [btn timeFireBeginFrom:10];
    
    //Do some other thing
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
