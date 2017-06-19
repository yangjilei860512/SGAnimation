
## 前沿

* 对动画的一些实际应用（后期不断更新维护中）


## 效果图

![](https://github.com/kingsic/SGAnimation/raw/master/Gif/sorgle.gif) 


## 主要内容的介绍

* `跑马灯`<br>

* `活动弹窗`<br>


## 代码介绍（详细使用请参考 Demo）

* 将项目中 SGAnimation 文件夹导入工程

* 导入 #import "SGAnimation.h" 头文件

```Objective-C
    /// 跑马灯
    SGHorseRaceLampView *HRLView = [[SGHorseRaceLampView alloc] init];
    HRLView.frame = CGRectMake(0, 150, self.view.frame.size.width, 30);
    HRLView.title = @"使用 UIView 动画进行封装的跑马灯效果，Block 进行事件点击处理";
    HRLView.imageNage = @"horn_icon";
    [self.view addSubview:HRLView];
    HRLView.selectedBlock = ^{
        NSLog(@"被点击了");
    };
    
    
    /// 活动弹窗
    SGActivePopupsView *APView = [[SGActivePopupsView alloc] init];
    APView.imageName = [UIImage imageNamed:@"activePopus_imageView_icon"];
    APView.selectedImageBlock = ^{
        NSLog(@"图片被点击了");
    };
    [APView SG_show];
```


## Concluding remarks

* 如在使用中, 遇到什么问题或有更好建议者, 请记得 [Issues me](https://github.com/kingsic/SGAnimation/issues) 或 kingsic@126.com 邮箱联系我

