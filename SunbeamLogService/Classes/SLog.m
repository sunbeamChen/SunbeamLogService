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

+ (int) initSLogService:(BOOL) logOn
{
    int result;
    
    isLogOn = logOn;
    
    NSLog(@"\n======================\nSLog version is %@\n======================", SLOG_VERSION);
    
    return result;
}

+ (void) SLogVerbose:(NSString *) format, ...
{
    if (!isLogOn) {
        return;
    }
    
    va_list args;
    va_start(args, format);
    
    va_end(args);
}

+ (void) SLogDebug:(NSString *) format, ...
{
    if (!isLogOn) {
        return;
    }
    
    va_list args;
    va_start(args, format);
    
    va_end(args);
}

+ (void) SLogInfo:(NSString *) format, ...
{
    if (!isLogOn) {
        return;
    }
    
    va_list args;
    va_start(args, format);
    
    va_end(args);
}

+ (void) SLogWarn:(NSString *) format, ...
{
    va_list args;
    va_start(args, format);
    
    va_end(args);
}

+ (void) SLogError:(NSString *) format, ...
{
    va_list args;
    va_start(args, format);
    
    va_end(args);
}

@end
