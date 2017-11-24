//
//  GesBaseViewController.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/24.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "GesBaseViewController.h"

@interface GesBaseViewController ()<ContentViewDelegate>



@end

@implementation GesBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RECT_VCBACKGROUND;
    [self createUI];
    [self addUI];
}


- (void)createUI {
    
    CGFloat w = RECT_WEIGHT * 3 + 40 + RECT_RADIUS_SPACE * 2;
    self.gesView = [[ContentView alloc] initWithFrame:CGRectMake(0, 0, w, w)];
    self.gesView.delegate = self;
    self.gesView.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
    [self.view addSubview:self.gesView];
    //TipLabel
    self.tipText = [[TipLabel alloc]initWithFrame:CGRectMake(0, self.gesView.frame.origin.y-30, SCREENWIDTH, 30)];
    self.tipText.font = [UIFont systemFontOfSize:14];
    self.tipText.textAlignment = 1;
    self.tipText.textColor = [UIColor redColor];
    [self.view addSubview:self.tipText];
}


//子类冲泻
- (void) addUI {
    
}


//代理方法
- (void)selectedWithNum:(NSString *)str {
    //验证
    if (str.length < 4) {
        [self.tipText setFaildWithNSString:@"连接至少四个点"];
    }else {
        self.passStr = [NSString stringWithFormat:@"%@",str];
        [self nextRequest];
    }
}

- (void)nextRequest {
    NSLog(@"可以开始请求");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
