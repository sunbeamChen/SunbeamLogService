//
//  SLogManager.m
//  Pods
//
//  Created by sunbeam on 2016/12/28.
//
//

#import "SLogManager.h"

#define LOG_FILE_PATH [NSString stringWithFormat:@"%@/sherlock/log/",[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0]]

BOOL const SAPITurnOnConsoleLog = YES;

BOOL const SAPITurnOnFileLog = YES;

NSTimeInterval const SAPILogFileRollingFrequency = 60 * 60 * 24 * 5;

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

- (instancetype)init
{
    if (self = [super init]) {
        _consoleLogLevel = DDLogLevelInfo;
        _fileLogLevel = DDLogLevelWarning;
        [self initConsoleLogManager];
        [self initFileLogManager];
    }
    
    return self;
}

- (void) initConsoleLogManager
{
    if (_consoleLogManager != nil) {
        _consoleLogManager = nil;
    }
    
    if (SAPITurnOnConsoleLog) {
        _consoleLogManager = [[SConsoleLogManager alloc] initSConsoleLogManager:_consoleLogLevel];
    }
}

- (void) initFileLogManager
{
    if (_fileLogManager != nil) {
        _fileLogManager = nil;
    }
    
    if (SAPITurnOnFileLog) {
        _fileLogManager = [[SFileLogManager alloc] initSFileLogManager:_fileLogLevel logFileDirectory:LOG_FILE_PATH rollingFrequency:SAPILogFileRollingFrequency];
    }
}

- (void)setConsoleLogLevel:(DDLogLevel)consoleLogLevel
{
    if (_consoleLogLevel == consoleLogLevel) {
        return;
    }
    _consoleLogLevel = consoleLogLevel;
    [self initConsoleLogManager];
}

- (void)setFileLogLevel:(DDLogLevel)fileLogLevel
{
    if (_fileLogLevel == fileLogLevel) {
        return;
    }
    _fileLogLevel = fileLogLevel;
    [self initFileLogManager];
}

@end
