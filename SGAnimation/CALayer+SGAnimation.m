//
//  CALayer+SGAnimation.m
//  SGAnimationExample
//
//  Created by apple on 2017/6/13.
//  Copyright © 2017年 Sorgle. All rights reserved.
//

#import "CALayer+SGAnimation.h"

@implementation CALayer (SGAnimation)
/// 视图动画 (transform)
- (void)SG_animationWithDuration:(CGFloat)duration values:(NSArray *)values {
    CAKeyframeAnimation *KFAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    KFAnimation.duration = duration;
    KFAnimation.removedOnCompletion = NO;
    KFAnimation.fillMode = kCAFillModeForwards;
    NSMutableArray *valueArr = [NSMutableArray array];
    CGFloat beginValue = [values[0] floatValue];
    CGFloat betweenValue = [values[1] floatValue];
    CGFloat endValue = [values[2] floatValue];
    [valueArr addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(beginValue, beginValue, beginValue)]];
    [valueArr addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(betweenValue, betweenValue, betweenValue)]];
    [valueArr addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(endValue, endValue, endValue)]];
    KFAnimation.values = valueArr;
    KFAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    [self addAnimation:KFAnimation forKey:nil];
}


@end

