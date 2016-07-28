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
*  初始化SLog服务
*
*  @param logOn DEBUG时日志是否开启
*
*  @return 初始化结果 0－成功；-1－失败
*/
+ (int) initSLogService:(BOOL) logOn;

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
