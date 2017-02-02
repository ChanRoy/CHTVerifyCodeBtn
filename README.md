# CHTVerifyCodeBtn
验证码按钮，自动倒计时

![](https://github.com/ChanRoy/CHTVerifyCodeBtn/blob/master/CHTVerifyCodeBtn.gif)

##简介
*获取验证码按钮，点击发送后自动倒计时*

*继承于原生UIButton，属性设置与UIButton相同*

*具体效果如上图*
##使用
支持xib与代码调用，使用方法与UIButton基本类似，唯一不同的公开接口如下：

```
//按钮的点击事件中调用，开始倒计时，倒计时结束后会自动返回初始状态
//startCount: 表示倒计时时间
- (void)timeFireBeginFrom:(NSUInteger)startCount;
```
按钮倒计时过程中为disable状态，不支持连续点击。


##使用Demo

```
- (IBAction)btnClick:(CHTVerifyCodeBtn *)btn {
    
    [btn timeFireBeginFrom:10];
    
    //Do some other thing
    
}
```
具体使用方法比较简单，请参照Demo。

