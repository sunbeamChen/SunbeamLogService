//
//  SLog.m
//  Pods
//
//  Created by sunbeam on 16/7/28.
//
//

#import "SLog.h"

@interface SLog()

@end

@implementation SLog

+ (void) initSLogService:(BOOL) logOn
{
    [[SLogManager shareSLogManagerInstance] initSLogManager:logOn];
    
    SLogVerbose(@"\n======================\nSunbeamLogService(https://github.com/sunbeamChen/SunbeamLogService) version is %@\n======================", SLOG_VERSION);
}

+ (NSString *) getLogFilePath
{
    if ([SLogManager shareSLogManagerInstance].fileLogManager.logFileInfo) {
        return [SLogManager shareSLogManagerInstance].fileLogManager.logFileInfo.filePath;
    }
    
    return nil;
}

@end
