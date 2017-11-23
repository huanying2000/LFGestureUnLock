//
//  HideTrackView.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "HideTrackView.h"
#import "GesManager.h"

@implementation HideTrackView {
    UISwitch *sw;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self createUI];
    }
    return self;
}


- (void)createUI {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
    label.text = @"隐藏轨迹";
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor grayColor];
    [self addSubview:label];
    
    sw = [[UISwitch alloc] initWithFrame:CGRectMake(label.frame.size.width, 0, 100, 30)];
    [sw sizeToFit];
    sw.on = NO;

    [self addSubview:sw];
    
    [sw addTarget:self action:@selector(change) forControlEvents:UIControlEventTouchUpInside];
    [self sizeToFit];
    [self reloadGesHideTrack];
    
}

- (void)reloadGesHideTrack {
    sw.on = [GesManager getGesHidenOpen];
}

- (void)change {
    [GesManager setGesHidenOpen:sw.on];
}

@end
