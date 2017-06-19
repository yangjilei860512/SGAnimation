//
//  ActivePopupsVC.m
//  SGAnimationExample
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 Sorgle. All rights reserved.
//

#import "ActivePopupsVC.h"
#import "SGAnimation.h"

@interface ActivePopupsVC ()

@end

@implementation ActivePopupsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"活动弹窗";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    SGActivePopupsView *APView = [[SGActivePopupsView alloc] init];
    APView.imageName = [UIImage imageNamed:@"activePopus_imageView_icon"];
    APView.selectedImageBlock = ^{
        NSLog(@"图片被点击了");
    };
    [APView SG_show];
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
