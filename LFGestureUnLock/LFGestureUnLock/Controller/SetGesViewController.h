//
//  SetGesViewController.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/24.
//  Copyright © 2017年 ios开发. All rights reserved.
//  设置密码的界面

#import "GesBaseViewController.h"

@protocol setGesDelegate <NSObject>

- (void)getGesPass:(NSString *)pass;

@end

@interface SetGesViewController : GesBaseViewController

@property (nonatomic,weak) id<setGesDelegate> delegate;

@end
