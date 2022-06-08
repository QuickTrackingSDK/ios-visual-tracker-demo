//
//  ViewController.m
//  UMVisualDemo
//
//  Created by wangkai on 2019/12/16.
//  Copyright © 2019 wangkai. All rights reserved.
//

#import "ViewController.h"
#import "tableViewController.h"
#import "collectionViewController.h"
#import "otherViewController.h"
#import "SPMViewController.h"
#import <UMVisual/UMVisual.h>
#import <UMCommon/MobClick.h>

#define UM_SCREEN_WIDTH                    [[UIScreen mainScreen] bounds].size.width
#define UM_SCREEN_HEIGHT                   [[UIScreen mainScreen] bounds].size.height
@interface ViewController ()
@property (strong, nonatomic) UIButton *tableViewBtn;
@property (strong, nonatomic) UIButton *collectionViewBtn;
@property (strong, nonatomic) UIButton *otherViewBtn;
@property (strong, nonatomic) UIButton *SPMViewBtn;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
    [MobClick beginLogPageView:@"PageHome"];


}


- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];

    [MobClick endLogPageView:@"PageHome"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"UMVisual Demo";
    [self.view addSubview:self.tableViewBtn];
    [self.view addSubview:self.collectionViewBtn];
    [self.view addSubview:self.otherViewBtn];
    [self.view addSubview:self.SPMViewBtn];


    // Do any additional setup after loading the view.
}

- (UIButton *)tableViewBtn {
    if (!_tableViewBtn) {
        _tableViewBtn = [[UIButton alloc] initWithFrame:CGRectMake(UM_SCREEN_WIDTH/2-200/2,100,200,50)];
        [_tableViewBtn setBackgroundColor:[UIColor colorWithRed:141/255.0 green:166/255.0 blue:196/255.0 alpha:1.0]];
        [_tableViewBtn.layer setCornerRadius:5.0];
        [_tableViewBtn addTarget:self action:@selector(tableViewBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_tableViewBtn setTitle:@"tableView(页面A)" forState:UIControlStateNormal];

        _tableViewBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:16];

        
    }
    return _tableViewBtn;
}

- (UIButton *)collectionViewBtn {
    if (!_collectionViewBtn) {
        _collectionViewBtn = [[UIButton alloc] initWithFrame:CGRectMake(UM_SCREEN_WIDTH/2-200/2,250,200,50)];
        [_collectionViewBtn setBackgroundColor:[UIColor colorWithRed:141/255.0 green:166/255.0 blue:196/255.0 alpha:1.0]];
        [_collectionViewBtn.layer setCornerRadius:5.0];
        [_collectionViewBtn addTarget:self action:@selector(collectionViewBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_collectionViewBtn setTitle:@"collectionView(页面B)" forState:UIControlStateNormal];

        _collectionViewBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:16];

        
    }
    return _collectionViewBtn;
}

- (UIButton *)otherViewBtn {
    if (!_otherViewBtn) {
        _otherViewBtn = [[UIButton alloc] initWithFrame:CGRectMake(UM_SCREEN_WIDTH/2-200/2,400,200,50)];
        [_otherViewBtn setBackgroundColor:[UIColor colorWithRed:141/255.0 green:166/255.0 blue:196/255.0 alpha:1.0]];
        [_otherViewBtn.layer setCornerRadius:5.0];
        [_otherViewBtn addTarget:self action:@selector(otherViewBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_otherViewBtn setTitle:@"other(页面C)" forState:UIControlStateNormal];

        _otherViewBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:16];

        
    }
    return _otherViewBtn;
}

- (UIButton *)SPMViewBtn {
    if (!_SPMViewBtn) {
        _SPMViewBtn = [[UIButton alloc] initWithFrame:CGRectMake(UM_SCREEN_WIDTH/2-200/2,550,200,50)];
        [_SPMViewBtn setBackgroundColor:[UIColor colorWithRed:141/255.0 green:166/255.0 blue:196/255.0 alpha:1.0]];
        [_SPMViewBtn.layer setCornerRadius:5.0];
        [_SPMViewBtn addTarget:self action:@selector(SPMViewBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_SPMViewBtn setTitle:@"无SPM页面" forState:UIControlStateNormal];

        _SPMViewBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:16];

        
    }
    return _SPMViewBtn;
}

-(void)tableViewBtnClick{
    tableViewController *tableView = [[tableViewController alloc]init];
    [self.navigationController pushViewController:tableView animated:YES];
}

-(void)collectionViewBtnClick{
    collectionViewController *collectionView = [[collectionViewController alloc]init];
    [self.navigationController pushViewController:collectionView animated:YES];
}

-(void)otherViewBtnClick{
    otherViewController *otherView = [[otherViewController alloc]init];
    [self.navigationController pushViewController:otherView animated:YES];
}

-(void)SPMViewBtnClick{
    SPMViewController *SPMView = [[SPMViewController alloc]init];
    [self.navigationController pushViewController:SPMView animated:YES];
}
@end
