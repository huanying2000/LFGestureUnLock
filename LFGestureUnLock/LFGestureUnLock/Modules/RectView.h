//
//  RectView.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Define.h"

@interface RectView : UIView

@property (nonatomic,assign) BOOL isSelected;

/*默认状态*/
- (void)defaultRect;
// 选中状态
- (void)selectRect;


@end
