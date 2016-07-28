//
//  SLViewController.m
//  SunbeamLogService
//
//  Created by sunbeamChen on 07/28/2016.
//  Copyright (c) 2016 sunbeamChen. All rights reserved.
//

#import "SLViewController.h"

#import <SunbeamLogService/SunbeamLogService.h>

@interface SLViewController ()

@end

@implementation SLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [SLog getSLogVersion];
    
    [SLog SLog:@"这是一个测试"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
