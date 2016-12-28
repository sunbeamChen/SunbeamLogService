//
//  SLogManager.h
//  Pods
//
//  Created by sunbeam on 2016/12/28.
//
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>
#import "SConsoleLogManager.h"
#import "SFileLogManager.h"

#define SLog_Verbose(frmt, ...) \
do { DDLogVerbose(frmt, ##__VA_ARGS__) } while(0)

#define SLog_Debug(frmt, ...) \
do { DDLogDebug(frmt, ##__VA_ARGS__) } while(0)

#define SLog_Info(frmt, ...) \
do { DDLogInfo(frmt, ##__VA_ARGS__) } while(0)

#define SLog_Warn(frmt, ...) \
do { DDLogWarn(frmt, ##__VA_ARGS__) } while(0)

#define SLog_Error(frmt, ...) \
do { DDLogError(frmt, ##__VA_ARGS__) } while(0)

@interface SLogManager : NSObject

/**
 控制台日志
 */
@property (nonatomic, copy, readonly) SConsoleLogManager* consoleLogManager;

@property (nonatomic, assign) DDLogLevel consoleLogLevel;

/**
 文件日志
 */
@property (nonatomic, copy, readonly) SFileLogManager* fileLogManager;

@property (nonatomic, assign) DDLogLevel fileLogLevel;

/**
 单例

 @return SLogManager
 */
+ (instancetype) shareSLogManagerInstance;

@end
