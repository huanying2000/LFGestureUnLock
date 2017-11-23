//
//  TipLabel.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipLabel : UILabel

/*默认提示文字*/
- (void)setDefaultWithNSString:(NSString *)str;


/*错误的提示文字*/
- (void)setFaildWithNSString:(NSString *)str;



@end
