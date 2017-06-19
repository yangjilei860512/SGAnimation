//
//  SGActivePopupsView.m
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

#import "SGActivePopupsView.h"
#import "CALayer+SGAnimation.h"

#define activePopupsViewWidth [UIScreen mainScreen].bounds.size.width
#define activePopupsViewHeight [UIScreen mainScreen].bounds.size.height

@interface SGActivePopupsView ()
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIButton *cancelBtn;
@end

@implementation SGActivePopupsView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];
        
        [self initialization];
        [self setupSubviews];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self initialization];
    [self setupSubviews];
}

- (void)initialization {
    _popupsTimeInterval = 0.3;
}

- (void)setupSubviews {
    [self addSubview:self.imageView];
    [self addSubview:self.cancelBtn];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat spacing = 10;
    
    CGFloat imageViewW = activePopupsViewWidth * 3 / 4;
    CGFloat imageViewH = _imageView.image.size.height;
    CGFloat imageViewX = 0.5 * (activePopupsViewWidth - imageViewW);
    CGFloat imageViewY = 0.5 * (activePopupsViewHeight - imageViewH);
    _imageView.frame = CGRectMake(imageViewX, imageViewY, imageViewW, imageViewH);
    
    CGRect tempFrame = _cancelBtn.frame;
    tempFrame.origin.x = CGRectGetMaxX(_imageView.frame);
    tempFrame.origin.y = imageViewY - 3 * spacing;
    _cancelBtn.frame = tempFrame;
    
    [self addAnimationWithImageView];
}

- (void)addAnimationWithImageView {
    [_imageView.layer SG_animationWithDuration:self.popupsTimeInterval values:@[@0.1, @1.05, @1]];
    [_cancelBtn.layer SG_animationWithDuration:self.popupsTimeInterval values:@[@0.1, @1.05, @1]];
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
        _imageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didselectImage)];
        [_imageView addGestureRecognizer:tap];
    }
    return _imageView;
}

- (UIButton *)cancelBtn {
    if (!_cancelBtn) {
        _cancelBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [_cancelBtn setBackgroundImage:[UIImage imageNamed:@"activePopus_cancelBtn_icon"] forState:(UIControlStateNormal)];
        [_cancelBtn setBackgroundImage:[UIImage imageNamed:@"activePopus_cancelBtn_icon"] forState:(UIControlStateHighlighted)];
        [_cancelBtn addTarget:self action:@selector(cancelBtn_action) forControlEvents:(UIControlEventTouchUpInside)];
        [_cancelBtn sizeToFit];
    }
    return _cancelBtn;
}

- (void)cancelBtn_action {
    [self dismiss];
}

- (void)SG_show {
    if (self.superview != nil) return;
    
    self.frame = [UIScreen mainScreen].bounds;
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    [keyWindow addSubview:self];
}

- (void)dismiss {
    [_imageView.layer SG_animationWithDuration:self.popupsTimeInterval values:@[@1, @0.5, @0.1]];
    [_cancelBtn.layer SG_animationWithDuration:self.popupsTimeInterval values:@[@1, @0.5, @0.1]];
    
    __weak typeof(self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(self.popupsTimeInterval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf removeFromSuperview];
    });
}

#pragma mark - - - 图片的点击事件
- (void)didselectImage {
    [self removeFromSuperview];
    
    if (self.selectedImageBlock) {
        self.selectedImageBlock();
    }
}

- (void)setImageName:(UIImage *)imageName {
    _imageName = imageName;
    if (imageName) {
        _imageView.image = imageName;
    }
}

- (void)setPopupsTimeInterval:(CGFloat)popupsTimeInterval {
    _popupsTimeInterval = popupsTimeInterval;
}


@end

