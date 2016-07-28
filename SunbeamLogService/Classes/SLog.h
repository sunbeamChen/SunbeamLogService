//
//  SLog.h
//  Pods
//
//  Created by sunbeam on 16/7/28.
//
//

#import <Foundation/Foundation.h>

@interface SLog : NSObject

/**
 *  获取SLog版本号
 *
 *  @return SLog版本号
 */
+ (NSString *) getSLogVersion;

/**
 *  关闭日志输出，该开关只作用于SLog普通输出，对于Warn、Error该开关不起作用
 */
+ (void) switchLogOff;

/**
 *  Info级别日志打印
 *
 *  @param format 格式化信息
 */
+ (void) SLog:(NSString *) format, ...;

/**
 *  Warn级别日志打印
 *
 *  @param format 格式化信息
 */
+ (void) SLog_Warn:(NSString *) format, ...;

/**
 *  Error级别日志打印
 *
 *  @param format 格式化信息
 */
+ (void) SLog_Error:(NSString *) format, ...;

@end
