//
//  ContentView.m
//  LFGestureUnLock
//
//  Created by ios开发 on 2017/11/23.
//  Copyright © 2017年 ios开发. All rights reserved.
//

#import "ContentView.h"
#import "GesManager.h"

/*识别手势的View*/

@interface ContentView() {
    UIBezierPath *path;
}

@property (nonatomic,assign) CGPoint currentPoint;

@property (nonatomic,strong) NSMutableArray *rectArt;

@end

@implementation ContentView

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self createUI];
    }
    return self;
}

- (void)createUI {
    self.backgroundColor = [UIColor clearColor];
    for (int i = 0; i < 9; i ++) {
        NSInteger y = (NSInteger)i / 3;
        RectView *rect = [[RectView alloc]initWithFrame:CGRectMake(20+(i%3)*(RECT_WEIGHT+RECT_RADIUS_SPACE), y*(RECT_WEIGHT+RECT_RADIUS_SPACE)+20, RECT_WEIGHT, RECT_WEIGHT)];
        rect.tag = i + 1;
        [self addSubview:rect];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    self.currentPoint = point;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    RectView *rect = [self rectWithPoint:point];
    if (rect && !rect.isSelected) {
        [self.rectArt addObject:rect];
        [rect selectRect];
    }else {
        _currentPoint = point;
    }
    /*
     setNeedsDisplay 会调用drawRect方法
     */
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (RectView *rect in self.subviews) {
        [rect defaultRect];
    }
    //返回数字
    [self mixNum];
    [self.rectArt removeAllObjects];
    [self setNeedsDisplay];
}

- (void)mixNum {
    NSMutableString *str = [[NSMutableString alloc] init];
    for (int i = 0; i < self.rectArt.count; i ++) {
        RectView *r = [self.rectArt objectAtIndex:i];
        NSInteger idex = r.tag;
        NSString *s = [NSString stringWithFormat:@"%ld",(long)idex];
        [str appendString:s];
    }
    NSString *ss = [NSString stringWithFormat:@"%@",str];
    if (self.delegate && [self.delegate respondsToSelector:@selector(selectedWithNum:)]) {
        [self.delegate selectedWithNum:ss];
    }
}


- (void)drawRect:(CGRect)rect {
    if (![GesManager getGesHidenOpen]) { //没有关闭连线
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        if (self.rectArt.count == 0) {
            return;
        }
        path = [UIBezierPath bezierPath];
        [RECT_COLORSELECT setFill];
        [RECT_COLORSELECT setStroke];
        [RECT_COLORSELECT set];
        path.lineWidth = RECT_LINE_WEIGHT;
        path.lineCapStyle = kCGLineCapRound;
        
        for (int i = 0; i < self.rectArt.count; i ++) {
            RectView *rect = [self.rectArt objectAtIndex:i];
            if (i == 0) {
                [path moveToPoint:rect.center];
            }else {
                [path addLineToPoint:rect.center];
            }
        }
        [path addLineToPoint:self.currentPoint];
        CGContextAddPath(ctx, path.CGPath);
        CGContextStrokePath(ctx);
        
    }
}



- (RectView *)rectWithPoint:(CGPoint)point {
    for (RectView *rect in self.subviews) {
        if (CGRectContainsPoint(rect.frame, point)) {
            return rect;
        }
    }
    return nil;
}

- (NSMutableArray *)rectArt {
    if (_rectArt == nil) {
        _rectArt = [[NSMutableArray alloc] init];
    }
    return _rectArt;
}



@end
