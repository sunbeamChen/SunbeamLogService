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
	
    [SLog initSLogService:NO];
    
    SLogVerbose(@"log file path : %@", [SLog getLogFilePath]);
    
    SLogVerbose(@"hello test %@", @"sunbeam chenxun");
    
    SLogDebug(@"hello test %@", @"sunbeam chenxun");
    
    SLogInfo(@"hello test %@", @"sunbeam chenxun");
    
    SLogWarn(@"hello test %@", @"sunbeam chenxun");
    
    SLogError(@"hello test %@", @"sunbeam chenxun");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
