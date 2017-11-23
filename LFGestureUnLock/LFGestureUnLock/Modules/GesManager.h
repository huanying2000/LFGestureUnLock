//
//  GesManager.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GesManager : NSObject

//是否打开隐藏手势轨迹
+ (BOOL)getGesHidenOpen;

//缓存是否打开隐藏手势轨迹
+ (void)setGesHidenOpen:(BOOL)open;


@end
