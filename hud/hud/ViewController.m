//
//  ViewController.m
//  hud
//
//  Created by Mac on 15/12/23.
//  Copyright © 2015年 hshd. All rights reserved.
//

#import "ViewController.h"
#import "SDProgressHUD.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *topView;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
   
    
}


- (IBAction)btnClick:(UIButton *)sender
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



}





@end
