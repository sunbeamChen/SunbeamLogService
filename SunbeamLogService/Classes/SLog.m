//
//  SLog.m
//  Pods
//
//  Created by sunbeam on 16/7/28.
//
//

#import "SLog.h"

#define SLOG_VERSION @"0.1.2"

#ifdef DEBUG || _DEBUG
    static BOOL isLogOn = YES;
#else
    static BOOL isLogOn = NO;
#endif

@interface SLog()

@end

@implementation SLog

+ (void) initSLogService:(BOOL) logOn
{
    isLogOn = logOn;
    
    NSLog(@"\n======================\nSLog version is %@\n======================", SLOG_VERSION);
}

+ (NSString *) getLogFilePath
{
    if ([SLogManager shareSLogManagerInstance].fileLogManager.logFileInfo) {
        return [SLogManager shareSLogManagerInstance].fileLogManager.logFileInfo.filePath;
    }
    
    return nil;
}

@end
