//
//  SetHeaderView.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetHeaderView : UIView

//设置手势缩略图
- (void)refreshWithString:(NSString *)str;

//恢复到默认状态
- (void)defult;



@end
