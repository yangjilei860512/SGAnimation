//
//  HorseRaceLampVC.m
//  SGAnimationExample
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 Sorgle. All rights reserved.
//

#import "HorseRaceLampVC.h"
#import "SGAnimation.h"

@interface HorseRaceLampVC ()

@end

@implementation HorseRaceLampVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"跑马灯";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupHorseRaceLampView];
}

- (void)setupHorseRaceLampView {
    SGHorseRaceLampView *HRLView = [[SGHorseRaceLampView alloc] init];
    HRLView.frame = CGRectMake(0, 150, self.view.frame.size.width, 30);
    HRLView.backgroundColor = [[UIColor orangeColor] colorWithAlphaComponent:0.2];
    HRLView.titleFont = [UIFont systemFontOfSize:12];
    HRLView.title = @"使用 UIView 动画进行封装的跑马灯效果，Block 进行事件点击处理";
    HRLView.imageNage = @"horn_icon";
    [self.view addSubview:HRLView];
    
    HRLView.selectedBlock = ^{
        NSLog(@"被点击了");
    };
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
