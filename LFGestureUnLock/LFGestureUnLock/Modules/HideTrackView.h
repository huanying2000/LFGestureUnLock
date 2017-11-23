//
//  HideTrackView.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HideTrackDelegate <NSObject>

- (void)hideTrack:(BOOL)Hide;

@end

@interface HideTrackView : UIView

@property (nonatomic,weak) id<HideTrackDelegate> delegate;

//页面启动后 刷新手势路线隐藏状态
- (void)reloadGesHideTrack;


@end
