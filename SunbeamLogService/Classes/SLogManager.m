//
//  SLogManager.m
//  Pods
//
//  Created by sunbeam on 2016/12/28.
//
//

#import "SLogManager.h"



#define LOG_FILE_PATH [NSString stringWithFormat:@"%@/log/",[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0]]

NSTimeInterval const SAPILogFileRollingFrequency = 60 * 60 * 24 * 7;

@interface SLogManager()

@property (nonatomic, assign) DDLogLevel sconsoleLogLevel;

@property (nonatomic, assign) DDLogLevel sfileLogLevel;

@end

@implementation SLogManager

+ (instancetype) shareSLogManagerInstance
{
    static SLogManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[SLogManager alloc] init];
    });
    
    return sharedInstance;
}

/**
 初始化SLogManager
 */
- (void) initSLogManager:(BOOL) logOn
{
    if (logOn) {
        _sconsoleLogLevel = DDLogLevelOff;
#ifdef DEBUG
        _sconsoleLogLevel = DDLogLevelVerbose;
#endif
    } else {
        _sconsoleLogLevel = DDLogLevelOff;
#ifdef DEBUG
        _sconsoleLogLevel = DDLogLevelWarning;
#endif
    }
    _sfileLogLevel = DDLogLevelWarning;
    [self initConsoleLogManager];
    [self initFileLogManager];
}

- (void) initConsoleLogManager
{
    _consoleLogManager = [[SConsoleLogManager alloc] initSConsoleLogManager:_sconsoleLogLevel];
}

- (void) initFileLogManager
{
    _fileLogManager = [[SFileLogManager alloc] initSFileLogManager:_sfileLogLevel logFileDirectory:LOG_FILE_PATH rollingFrequency:SAPILogFileRollingFrequency];
}

@end
