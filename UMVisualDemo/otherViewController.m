//
//  otherViewController.m
//  UMVisualDemo
//
//  Created by wangkai on 2019/12/16.
//  Copyright © 2019 wangkai. All rights reserved.
//

#import "otherViewController.h"
#import <UMCommon/MobClick.h>
@implementation otherViewController
- (void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
    [MobClick beginLogPageView:@"PageC"];


}


- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];

    [MobClick endLogPageView:@"PageC"];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title=@"pageC";


    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 100, 100, 40)];
    [button setBackgroundColor:[UIColor colorWithRed:141/255.0 green:166/255.0 blue:196/255.0 alpha:1.0]];
    [button.layer setCornerRadius:5.0];
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:16];
    [self.view addSubview:button];
    

  
    
    UITextField * textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 180, 200, 100)];
    
    //这将设置文本字段的边框样式 //这将设置文本字段的边框样式
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //未输入文本时显示占位符文本//未输入文本时显示占位符文本
    textField.placeholder = @"简单文本字段";
    
    //将前缀标签设置为左视图，然后文本开始//将前缀标签设置为左视图，然后文本开始
    
    //当要显示左前缀标签时设置//当要显示左前缀标签时设置
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    //将textField添加到视图中。//将textField添加到视图中。
    [self.view addSubview:textField];
    UISwitch* openbutton = [[UISwitch alloc]initWithFrame:CGRectMake(10, 300, 100, 20)];
    openbutton.on=YES;
    // 添加事件
    [openbutton addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];   // 开关事件切换通知
    [self.view addSubview:openbutton];
    
    UIStepper  *stepper = [[UIStepper  alloc] init];
    stepper.minimumValue  = 2;
    stepper.maximumValue  = 5;
    stepper.stepValue  = 2;
    stepper.value  = 3;
    stepper.center  = CGPointMake(100, 450);
  //  [stepper addTarget:self  action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:stepper];
    
    
    
    UIImage *image = [UIImage imageNamed:@"img.png"];
    
    //图片的显示是需要载体的；需要放在UIImageView；
    UIImageView *imgView = [[UIImageView alloc]init];
    //图片显示在屏幕上的大小是由载体控制的；
    //现在把载体的大小设置成图片的大小，使用图片的大小设置UIImageView的长宽；
    imgView.frame = CGRectMake(200, 450, 150, 150);
    imgView.backgroundColor = [UIColor yellowColor];
    [imgView setImage:image];
    imgView.userInteractionEnabled=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapHandle)];
    tap.numberOfTouchesRequired = 2;
    [imgView addGestureRecognizer:tap];
    [self.view addSubview:imgView];
    
    
    
}

-(void)tapHandle
{
}


-(void)segmentSelect:(UISegmentedControl*)seg
{
}
-(void)buttonClick
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"显示的标题" message:@"标题的提示信息" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"警告" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"点击警告");
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
    

}
-(void)switchChange:(id)sender{
}
-(void)sliderValueChanged:(UISlider *)slider
{
    NSLog(@"slider value%f",slider.value);
}




@end
