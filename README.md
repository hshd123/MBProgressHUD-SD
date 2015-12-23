# MBProgressHUD-SD
##对老牌提示框架的简单封装 一行代码就可以使用  

 快捷方式 

/********************************************HUD加载在KeyWindow***************************/

//isShow == YES 带半黑色背景
//isShow == NO 不带半黑色背景

1、显示消息

`#define kShowMessage(message,isShow) [SDProgressHUD showMessage:message isShowBlackBackground:isShow]`

/**显示消息 带描述 */
`#define kShowMessageAndDetail(message,detail,isShow) [SDProgressHUD showMessage:message Detail:detail isShowBlackBackground:isShow]`

/**显示单个菊花 */
`#define kShowSingleHud(isShow) [SDProgressHUD showSingleHudIsShowBlackground:isShow]`

/**显示成功提示 */
`#define kShowSuccess(success,isShow) [SDProgressHUD showSuccess:success isShowBlackBackground:isShow]`

/**显示错误信息提示 */
`#define kShowError(error,isShow) [SDProgressHUD showError:error isShowBlackBackground:isShow]`

`#define kHUDHidden [SDProgressHUD hidden]`


`/********************************************HUD加载在View上***************************/`

//////////////////不带半黑色背景//////////////////////////////

`/**显示消息**/`

`#define kShowMessageForView(message,View,isShow) [SDProgressHUD showMessage:message forView:View isShowBlackBackground:isShow]`

`/**显示消息 带描述 */`
`#define kShowMessageAndDetailForView(message,detail,View,isShow) [SDProgressHUD showMessage:message Detail:detail forView:View isShowBlackBackground:isShow]`

`/**显示单个菊花 */`
`#define kShowSingleHudForView(View,isShow) [SDProgressHUD showSingleHudIsShowBlackground:isShow forView:View]`

`/**显示成功提示 */`
`#define kShowSuccessForView(success,View,isShow) [SDProgressHUD showSuccess:success forView:View isShowBlackBackground:isShow]`

`/**显示错误信息提示 */`
`#define kShowErrorForView(error,View,isShow) [SDProgressHUD showError:error forView:View isShowBlackBackground:isShow]`

`#define kHUDHiddenForView(View) [SDProgressHUD hiddenForView:View]`


`/*************************使用Demo******************/`


`- (IBAction)btnClick:(UIButton *)sender
{

switch (sender.tag)
{
case 100:
{
kShowMessage(@"正在加载..",NO);
}
break;
case 101:
{
kShowMessageAndDetail(@"正在加载。",@"请稍候..",NO);
}
break;
case 102:
{
kShowSingleHud(NO);
}
break;
case 103:
{
kShowSuccess(@"加载成功..",NO);
}
break;
case 104:
{
kShowError(@"加载失败.",NO);
}
break;
case 105:
{
kShowMessage(@"正在加载..", YES);
}
break;
case 106:
{
kShowMessageAndDetail(@"正在加载..",@"请稍候.",YES);
}
break;
case 107:
{
kShowSingleHud(YES);
}
break;
case 108:
{
kShowSuccess(@"加载成功.",YES);
}
break;
case 109:
{
kShowError(@"加载失败..",YES);
}
break;


case 110:
{
kShowMessageForView(@"正在加载..", self.topView,YES);

}
break;
case 111:
{
kShowMessageAndDetailForView(@"正在加载。",@"请稍候..",self.topView,YES);

}
break;
case 112:
{
kShowSingleHudForView(self.topView,YES);

}
break;
case 113:
{
kShowSuccessForView(@"加载成功..",self.topView,YES);

}
break;
case 114:
{
kShowErrorForView(@"加载失败.",self.topView,YES);
}
break;
case 115:
{

[SDProgressHUD showProgressWithMessage:@"loading" whileExecutingBlock:^(SDProgressHUD *hud) {

float progress = 0.0f;
while (progress < 1.0f)
{
progress += 0.01f;
hud.progress = progress;
NSLog(@"pro -- %f",progress);
usleep(50000);
}

} forView:self.topView type:0 completion:^(SDProgressHUD *hud){

NSLog(@"sll--- %@",hud);

}];


}
break;
case 116:
{
[SDProgressHUD showProgressWithMessage:@"loading" whileExecutingBlock:^(SDProgressHUD *hud) {

float progress = 0.0f;
while (progress < 1.0f)
{
progress += 0.01f;
hud.progress = progress;
NSLog(@"pro -- %f",progress);
usleep(50000);
}

} forView:self.topView type:1 completion:^(SDProgressHUD *hud){

NSLog(@"sll--- %@",hud);

}];
}
break;
case 117:
{
[SDProgressHUD showProgressWithMessage:@"loading" whileExecutingBlock:^(SDProgressHUD *hud) {

float progress = 0.0f;
while (progress < 1.0f)
{
progress += 0.01f;
hud.progress = progress;
NSLog(@"pro -- %f",progress);
usleep(50000);
}

} forView:self.topView type:2 completion:^(SDProgressHUD *hud){

NSLog(@"sll--- %@",hud);

}];
}
break;
case 118:
{

}
break;

default:
break;
}

NSLog(@"sender.tag -- %ld",(long)sender.tag);

if (sender.tag!= 115&&sender.tag!= 116&&sender.tag!= 117)
{

dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
kHUDHidden;
kHUDHiddenForView(self.topView);

});
}
}`
