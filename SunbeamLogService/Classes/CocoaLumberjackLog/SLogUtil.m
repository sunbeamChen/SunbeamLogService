//
//  SLogUtil.m
//  Pods
//
//  Created by sunbeam on 2016/12/28.
//
//

#import "SLogUtil.h"

@implementation SLogUtil

+ (NSString *)getAppName
{
    static NSString *_appName;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _appName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
        
        if (!_appName) {
            _appName = [[NSProcessInfo processInfo] processName];
        }
        
        if (!_appName) {
            _appName = @"Sherlock";
        }
    });
    
    return _appName;
    
}

@end
