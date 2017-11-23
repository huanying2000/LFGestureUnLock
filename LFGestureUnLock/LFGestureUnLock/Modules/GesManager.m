//
//  GesManager.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "GesManager.h"

#define KEY @"key"
#define OPEN @"open"
#define CLOSE @"colse"

@implementation GesManager
//是否打开隐藏手势轨迹
+ (BOOL)getGesHidenOpen {
    NSString *s = [[NSUserDefaults standardUserDefaults] objectForKey:KEY];
    if ([s isEqualToString:OPEN]) {
        return YES;
    }
    return NO;
}

//设置是否打开手势轨迹
+ (void)setGesHidenOpen:(BOOL)open {
    NSUserDefaults *deful = [NSUserDefaults standardUserDefaults];
    if (open) {
        [deful setObject:OPEN forKey:KEY];
    }else {
        [deful setObject:CLOSE forKey:KEY];
    }
    //写入磁盘
    [deful synchronize];
}

@end
