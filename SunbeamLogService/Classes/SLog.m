//
//  SLog.m
//  Pods
//
//  Created by sunbeam on 16/7/28.
//
//

#import "SLog.h"

#import "Zlog/zlog.h"

#define SLOG_VERSION @"0.1.1"

#ifdef DEBUG
    static BOOL isLogOn = YES;
#else
    static BOOL isLogOn = NO;
#endif

@interface SLog()

@end

@implementation SLog

/**
 *  初始化SLog服务
 *
 *  @param logOff DEBUG时日志是否关闭
 *
 *  @return 初始化结果 0－成功；-1－失败
 */
+ (int) initSLogService:(BOOL) logOn
{
    int result;
    zlog_category_t *zc;
    
    // 获取zlog.conf文件路径
    NSString* logConfPath = [[NSBundle mainBundle] pathForResource:@"zlog" ofType:@"conf"];
    
    // 初始化ZLog服务
    result = zlog_init([logConfPath UTF8String]);
    
    if (result == -1) {
        NSLog(@"Sunbeam Log Service %@ init failed", SLOG_VERSION);
    } else if (result == 0) {
        [self SLog:@"Sunbeam Log Service %@ init success", SLOG_VERSION];
    }
    
    zc = zlog_get_category("slog_cat");
    if (!zc) {
        NSLog(@"slog get cat fail");
        zlog_fini();
        return -2;
    }
    
    // DEBUG时日志开关
    isLogOn = logOn;
    
    return result;
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
