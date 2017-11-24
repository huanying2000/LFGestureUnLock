//
//  SetGesViewController.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/24.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "SetGesViewController.h"
#import "SetHeaderView.h"

@interface SetGesViewController ()

@property (nonatomic,strong) NSString *firstNun;
@property (nonatomic,strong) NSString *secondNun;
@property (nonatomic,assign) BOOL isFirstSet; //第一次输入密码
@property (nonatomic,strong) SetHeaderView *headerView;


@end

@implementation SetGesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isFirstSet = YES;
}

- (void) addUI {
    [self.tipText setDefaultWithNSString:@"请设置手势密码"];
    [self.view addSubview:self.headerView];
}


- (void)nextRequest {
    if (self.isFirstSet) {
        self.firstNun = [NSString stringWithFormat:@"%@",self.passStr];
        self.isFirstSet = NO;
        [self.headerView refreshWithString:self.firstNun];
        [self.tipText setDefaultWithNSString:@"请确认手势密码"];
    }else {
        if ([self.passStr isEqualToString:self.firstNun]) {
            self.tipText.text = @"";
            if (self.delegate && [self.delegate respondsToSelector:@selector(getGesPass:)]) {
                [self.delegate getGesPass:self.firstNun];
            }
            [self.navigationController dismissViewControllerAnimated:YES completion:nil];
        }else {
            [self.tipText setFaildWithNSString: @"两次手势不同,请重新设置"];
            [self.headerView defult];
            self.isFirstSet = YES;
        }
    }
}

- (SetHeaderView *)headerView {
    if (!_headerView) {
        CGFloat w = RECT_WEIGHT*3 + 40+ RECT_RADIUS_SPACE *2;
        CGFloat y = self.view.center.y-w/2-50;
        self.headerView = [[SetHeaderView alloc]initWithFrame:CGRectMake(0 , 0, 60, 60)];
        self.headerView.center = CGPointMake(self.view.center.x, y+20);
    }
    return _headerView;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
