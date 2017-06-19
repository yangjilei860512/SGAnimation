//
//  SGHorseRaceLampView.h
//  SGHorseRaceLampView
//
//  Created by Sorgle on 2017/6/17.
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

typedef void(^SelectedBlock)();

@interface SGHorseRaceLampView : UIView
/// imageNage
@property (nonatomic, copy) NSString *imageNage;
/// title
@property (nonatomic, copy) NSString *title;
/// titleColor
@property (nonatomic, strong) UIColor *titleColor;
/// titleFont (默认字号 15)
@property (nonatomic, strong) UIFont *titleFont;
/// scrollTimeInterval (灵活控制滚动速率，需从后台获取数据)
@property (nonatomic, assign) CGFloat scrollTimeInterval;
/// block（content 点击事件）
@property (nonatomic, copy) SelectedBlock selectedBlock;

@end
