//
//  Define.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Define : NSObject

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

//圆宽
#define RECT_WEIGHT (SCREENHEIGHT > 667 ? 70 : 60)

//可点击
#define RECT_WEIGHT_able (SCREENHEIGHT > 667 ? 70 : 60)

//弧度
#define RECT_RADIUS RECT_WEIGHT / 2

//间距
#define RECT_RADIUS_SPACE (SCREENHEIGHT > 667 ? 40 :35)

//边框
/* 边框 */
#define RECT_LINE_WEIGHT 2

/* 边框 */
#define RECT_BORDER 1

/* 圆背景颜色 */
#define RECT_BACKGROUND [UIColor whiteColor]

/* 页面背景颜色 */
#define RECT_VCBACKGROUND [UIColor colorWithRed:244.0/255.0   green:244.0/255.0   blue:244.0/255.0   alpha:1]

/* 圆边框颜色 */
#define RECT_COLORDONE [UIColor colorWithRed:114.0/255.0   green:161.0/255.0   blue:250.0/255.0   alpha:1]

/* 圆选中颜色 */
#define RECT_COLORSELECT  [UIColor colorWithRed:89.0/255.0   green:146.0/255.0   blue:254.0/255.0   alpha:1]

/* 默认提示文字颜色 */
#define RECT_TIPCOLORNOMOR [UIColor grayColor]

/* 错误提示文字颜色 */
#define RECT_TIPCOLORFAILD [UIColor redColor]

/* 设置手势页 headView 默认颜色 */
#define RECT_HEADVIEWCOLOR [UIColor grayColor]

@end
