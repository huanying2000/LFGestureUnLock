//
//  RectView.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "RectView.h"
#import "GesManager.h"

@implementation RectView {
    UIView *interView;
    UIView *radius;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = RECT_RADIUS;
        self.backgroundColor = RECT_BACKGROUND;
        self.isSelected = NO;
        
        radius = [[UIView alloc] initWithFrame:CGRectMake(-5, -5, RECT_WEIGHT + 10, RECT_WEIGHT + 10)];
        radius.layer.cornerRadius = RECT_RADIUS + 5;
        radius.backgroundColor = RECT_BACKGROUND;
        radius.layer.borderWidth = RECT_BORDER;
        radius.layer.borderColor = RECT_COLORDONE.CGColor;
        [self addSubview:radius];
        
        interView = [[UIView alloc]initWithFrame:CGRectMake(RECT_WEIGHT/4, RECT_WEIGHT/4, RECT_WEIGHT/2, RECT_WEIGHT/2)];
        interView.layer.cornerRadius = RECT_WEIGHT/4;
        interView.hidden = YES;
        [self addSubview:interView];
        
        
    }
    return self;
}

- (void)defaultRect {
    if (_isSelected) {
        interView.hidden = true;
        radius.layer.borderColor = RECT_COLORDONE.CGColor;
        _isSelected = !_isSelected;
    }
}


- (void)selectRect {
    if (!_isSelected && ![GesManager getGesHidenOpen]) {
        interView.hidden = NO;
        interView.backgroundColor = RECT_COLORSELECT;
        radius.layer.borderColor = RECT_COLORSELECT.CGColor;
    }
    _isSelected = !_isSelected;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
