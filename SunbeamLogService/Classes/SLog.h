//
//  SLog.h
//  Pods
//
//  Created by sunbeam on 16/7/28.
//
//

#import <Foundation/Foundation.h>
#import "SLogManager.h"

#define SLogVerbose(format, ...) SLog_Verbose(format, ##__VA_ARGS__)

#define SLogDebug(format, ...) SLog_Debug(format, ##__VA_ARGS__)

#define SLogInfo(format, ...) SLog_Info(format, ##__VA_ARGS__)

#define SLogWarn(format, ...) SLog_Warn(format, ##__VA_ARGS__)

#define SLogError(format, ...) SLog_Error(format, ##__VA_ARGS__)

@interface SLog : NSObject

/**
*  初始化SLog服务
*
*  @param logOn DEBUG时日志是否开启
*
*  @return 初始化结果 0－成功；-1－失败
*/
+ (void) initSLogService:(BOOL) logOn;

/**
 获取log文件本地路径

 @return log文件本地路径
 */
+ (NSString *) getLogFilePath;

@end
