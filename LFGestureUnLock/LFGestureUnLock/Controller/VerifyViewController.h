//
//  VerifyViewController.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/24.
//  Copyright © 2017年 ios开发. All rights reserved.
//  验证密码的页面

#import "GesBaseViewController.h"
#import "HideTrackView.h"

@protocol verifyGesDelegate <NSObject>

- (void)verifyGesPass:(NSString *)pass;

@end

@interface VerifyViewController : GesBaseViewController

@property (nonatomic,strong) UILabel *userAcc; //用户账号
@property (nonatomic,strong) UIImageView *icon; //用户头像

@property (nonatomic,weak) id<verifyGesDelegate> delegate;
@property (nonatomic,strong) HideTrackView *hideView; //隐藏轨迹的开关

- (void) isSuccessGesPass:(BOOL)able; //YES 是正确密码

@end
