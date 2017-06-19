//
//  CALayer+SGAnimation.h
//  SGAnimationExample
//
//  Created by apple on 2017/6/13.
//  Copyright © 2017年 Sorgle. All rights reserved.
//
//  - - - - - - - - - - - - - - 交流QQ：1357127436 - - - - - - - - - - - - - - - //
//
//  - - 如在使用中, 遇到什么问题或者有更好建议者, 请于 kingsic@126.com 邮箱联系 - - - - //
//  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//  - - GitHub下载地址 https://github.com/kingsic/SGAnimation.git - — - - - - - //
//
//  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //

#import <UIKit/UIKit.h>

@interface CALayer (SGAnimation)
/**
 *  视图动画 (CAKeyframeAnimation)
 *
 *  @param duration     动画时间
 *  @param values      动画 value 值 CGFloat 类型，NSArray 需要 3 组数据，开始，中间，结束
 */
- (void)SG_animationWithDuration:(CGFloat)duration values:(NSArray *)values;

@end
