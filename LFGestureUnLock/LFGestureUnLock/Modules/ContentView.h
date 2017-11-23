//
//  ContentView.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RectView.h"

/*识别手势的View*/
@protocol ContentViewDelegate<NSObject>

- (void)selectedWithNum:(NSString *)str;

@end

@interface ContentView : UIView

@property (nonatomic,weak) id<ContentViewDelegate> delegate;

@end
