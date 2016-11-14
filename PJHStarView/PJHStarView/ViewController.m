//
//  ViewController.m
//  PJHStarView
//
//  Created by PJH on 16/11/14.
//  Copyright © 2016年 PJH.com. All rights reserved.
//

#import "ViewController.h"

#import "StarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self creatStarView];
}

-(void)creatStarView
{
    StarView *starVew=[[StarView alloc]initWithFrame:CGRectMake(100, 100, 100, 20)];
    [self.view addSubview:starVew];
    
    [starVew creatStarViewProgress:0.8 starWidth:20 starNum:5 space:5 backColor:[UIColor lightGrayColor] fillColor:[UIColor orangeColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
