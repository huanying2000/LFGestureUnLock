//
//  TipLabel.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "TipLabel.h"
#import "Define.h"
#import "CALayer+anim.h"

@implementation TipLabel

//设置默认显示的提示文字
- (void)setDefaultWithNSString:(NSString *)str {
    self.hidden = NO;
    self.text = [NSString stringWithFormat:@"%@",str];
    self.textColor = RECT_TIPCOLORNOMOR;
}
//设置错误提示文字
- (void)setFaildWithNSString:(NSString *)str {
    self.hidden = NO;
    self.text = [NSString stringWithFormat:@"%@",str];
    self.textColor = RECT_TIPCOLORFAILD;
    [self.layer shake];
}



@end
