//
//  SGHorseRaceLampView.h
//  SGHorseRaceLampView
//
//  Created by Sorgle on 2017/6/17.
//  Copyright © 2017年 Sorgle. All rights reserved.
//

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
