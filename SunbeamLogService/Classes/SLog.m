//
//  SLog.m
//  Pods
//
//  Created by sunbeam on 16/7/28.
//
//

#import "SLog.h"

#import "Zlog/zlog.h"

#define SLOG_VERSION @"0.1.0"

#ifdef DEBUG
    static BOOL isLogOn = YES;
#else
    static BOOL isLogOn = NO;
#endif

@interface SLog()

@end

@implementation SLog

/**
 *  获取SLog版本号
 *
 *  @return SLog版本号
 */
+ (NSString *) getSLogVersion
{
    [self SLog:@"Sunbeam Log service %@ (based on ZLog)", SLOG_VERSION];
    return SLOG_VERSION;
}

/**
 *  关闭日志输出
 */
+ (void) switchLogOff
{
    isLogOn = NO;
}

/**
 *  Info级别日志打印
 *
 *  @param format 格式化信息
 */
+ (void) SLog:(NSString *) format, ...
{
    if (!isLogOn) {
        return;
    }
    
    va_list args;
    va_start(args, format);
    vdzlog_info([format UTF8String], args);
    va_end(args);
}

/**
 *  Warn级别日志打印
 *
 *  @param format 格式化信息
 */
+ (void) SLog_Warn:(NSString *) format, ...
{
    va_list args;
    va_start(args, format);
    vdzlog_warn([format UTF8String], args);
    va_end(args);
}

/**
 *  Error级别日志打印
 *
 *  @param format 格式化信息
 */
+ (void) SLog_Error:(NSString *) format, ...
{
    va_list args;
    va_start(args, format);
    vdzlog_error([format UTF8String], args);
    va_end(args);
}

@end
