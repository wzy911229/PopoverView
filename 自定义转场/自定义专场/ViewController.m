//
//  ViewController.m
//  自定义专场
//
//  Created by test1 on 15/12/17.
//  Copyright © 2015年 data. All rights reserved.
//

#import "ViewController.h"
#import "ZYPopverViewController.h"
#import "ZYPopoverAnimtor.h"

@interface ViewController ()

@property(nonatomic,strong)ZYPopoverAnimtor *Animtor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}
- (IBAction)clickButton:(id)sender {
    
    ZYPopverViewController *popVc = [[ZYPopverViewController alloc] init];
    //定义负责转场的类
    popVc.transitioningDelegate = self.Animtor;
    
    //定义转场模式
    popVc.modalPresentationStyle = UIModalPresentationCustom;
    
    [self presentViewController:popVc animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (ZYPopoverAnimtor *)Animtor
{
    if (!_Animtor) {
        ZYPopoverAnimtor *animtor  = [[ZYPopoverAnimtor alloc]init];
        //弹出控制器的大小
        animtor.presentedFrame = CGRectMake(100, 200, 200, 200);
        //弹出蒙板的颜色
        animtor.coverColor = [UIColor blackColor];
         //弹出蒙板的透明度
        animtor.coverAlpha = 0.6 ;
        _Animtor = animtor;
    }
    return _Animtor;
}
@end
