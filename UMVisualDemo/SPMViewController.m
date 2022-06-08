//
//  SPMViewController.m
//  UMVisualDemo
//
//  Created by wangkai on 2021/5/13.
//  Copyright © 2021 wangkai. All rights reserved.
//

#import "SPMViewController.h"

@implementation SPMViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 200, 100, 40)];
    [button setBackgroundColor:[UIColor colorWithRed:141/255.0 green:166/255.0 blue:196/255.0 alpha:1.0]];
    [button.layer setCornerRadius:5.0];
    [button setTitle:@"button1" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:16];
    [self.view addSubview:button];
}

-(void)buttonClick
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"显示的标题" message:@"标题的提示信息" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"警告" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"点击警告");
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
    

}
@end
