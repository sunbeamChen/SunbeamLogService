//
//  SLog.h
//  Pods
//
//  Created by sunbeam on 16/7/28.
//
//

#import <Foundation/Foundation.h>

#define SLogVerbose(format, ...) [SLog SLogVerbose:format, ##__VA_ARGS__]

#define SLogDebug(format, ...) [SLog SLogDebug:format, ##__VA_ARGS__]

#define SLogInfo(format, ...) [SLog SLogInfo:format, ##__VA_ARGS__]

#define SLogWarn(format, ...) [SLog SLogWarn:format, ##__VA_ARGS__]

#define SLogError(format, ...) [SLog SLogError:format, ##__VA_ARGS__]

@interface SLog : NSObject

/**
*  初始化SLog服务
*
*  @param logOn DEBUG时日志是否开启
*
*  @return 初始化结果 0－成功；-1－失败
*/
+ (int) initSLogService:(BOOL) logOn;

/**
 Verbose级别日志打印

 @param format 格式化信息
 */
+ (void) SLogVerbose:(NSString *) format, ...;

/**
 Debug级别日志打印

 @param format 格式化信息
 */
+ (void) SLogDebug:(NSString *) format, ...;

/**
 Info级别日志打印
 
 @param format 格式化信息
 */
+ (void) SLogInfo:(NSString *) format, ...;

/**
 Warn级别日志打印
 
 @param format 格式化信息
 */
+ (void) SLogWarn:(NSString *) format, ...;

/**
 Error级别日志打印
 
 @param format 格式化信息
 */
+ (void) SLogError:(NSString *) format, ...;

@end
