//
//  ViewController.m
//  Marquee
//
//  Created by wanhouhong on 2017/9/20.
//  Copyright © 2017年 wanhouhong. All rights reserved.
//

#import "ViewController.h"
#import "MarqueeView.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel * announcementLabel;
@property (nonatomic , strong) MarqueeView *marqueeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.announcementLabel];
    [self.view addSubview:self.marqueeView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)dealloc {
    [self.marqueeView.timer invalidate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UILabel *)announcementLabel {
    if (!_announcementLabel) {
        _announcementLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.f, [UIScreen mainScreen].bounds.size.height/2, 40, 40)];
        _announcementLabel.textAlignment = NSTextAlignmentCenter;
        _announcementLabel.textColor = [UIColor blackColor];
        _announcementLabel.text = @"公告";
    }
    return _announcementLabel;
}

- (MarqueeView *)marqueeView {
    if (!_marqueeView) {
        _marqueeView = [[MarqueeView alloc] initWithFrame:CGRectMake(60.f, [UIScreen mainScreen].bounds.size.height/2, [UIScreen mainScreen].bounds.size.width - 80, 40)];
        _marqueeView.marqueeText = @"8888888888  77777777777  6666666666  5555555555";
    }
    return _marqueeView;
}

@end
