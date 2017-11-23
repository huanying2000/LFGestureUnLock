//
//  DragRect.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "DragRect.h"

@implementation DragRect

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = self.frame.size.width / 2;
        self.backgroundColor = [UIColor blackColor];
    }
    return self;
}

@end
