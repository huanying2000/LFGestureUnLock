//
//  CALayer+anim.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "CALayer+anim.h"

@implementation CALayer (anim)

/*错误晃动 动画*/
- (void)shake {
    CAKeyframeAnimation *anima = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
    anima.duration = 0.3f;
    anima.removedOnCompletion = YES;
    anima.repeatCount = 2;
    CGFloat s = 3;
    anima.values = @[@(-s),@(0),@(s),@(0),@(-s),@(0),@(s),@(0)];
    [self addAnimation:anima forKey:@"shake"];
}

@end
