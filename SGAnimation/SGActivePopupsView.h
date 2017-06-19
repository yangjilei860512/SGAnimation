//
//  SGActivePopupsView.h
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

typedef void(^SelectedImageBlock)();

@interface SGActivePopupsView : UIView
/// imageName
@property (nonatomic, strong) UIImage *imageName;
/// 弹出 image 所需时间（默认，0.3）
@property (nonatomic, assign) CGFloat popupsTimeInterval;
/// SelectedImageBlock
@property (nonatomic, copy) SelectedImageBlock selectedImageBlock;
/// 显示 SGActivePopupsView
- (void)SG_show;

@end
