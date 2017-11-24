//
//  GesBaseViewController.h
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/24.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentView.h"
#import "TipLabel.h"

@interface GesBaseViewController : UIViewController

@property (nonatomic,strong) ContentView *gesView;
@property (nonatomic,strong) TipLabel *tipText;
@property (nonatomic,strong) NSString *passStr;

- (void)nextRequest;

@end
