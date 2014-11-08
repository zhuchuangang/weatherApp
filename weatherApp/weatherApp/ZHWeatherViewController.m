//
//  ZHWeatherViewController.m
//  weatherApp
//
//  Created by zcg on 14-11-6.
//  Copyright (c) 2014年 zcg. All rights reserved.
//

#import "ZHWeatherViewController.h"
#import "ZHMainView.h"

@interface ZHWeatherViewController ()

@end

@implementation ZHWeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSInteger width=self.view.frame.size.width;
    NSInteger height=_scrollView.frame.size.height;
    _scrollView.frame=CGRectMake(0, 20, width*3, height);
    CGFloat R  = (CGFloat) 230/255.0;
    CGFloat G = (CGFloat) 67/255.0;
    CGFloat B = (CGFloat) 31/255.0;
    CGFloat alpha = (CGFloat) 1.0;
    
    UIColor *colorRGB = [UIColor colorWithRed: R
                                       green: G
                                        blue: B
                                       alpha: alpha
                        ];
    [_scrollView setBackgroundColor:colorRGB];

    ZHMainView *view1=[ZHMainView instanceView];
    view1.cityLabel.text=@"上海";
    view1.weatherLabel.text=@"晴转多云";
    view1.tempLabel.text=@"19";
    view1.frame=CGRectMake(0, 0, width, height);
    
    ZHMainView *view2=[ZHMainView instanceView];
    view2.cityLabel.text=@"南京";
    view2.weatherLabel.text=@"小雨";
    view2.tempLabel.text=@"21";
    view2.frame=CGRectMake(width, 0, width, height);

    ZHMainView *view3=[ZHMainView instanceView];
    view3.cityLabel.text=@"芜湖";
    view3.weatherLabel.text=@"小雪";
    view3.tempLabel.text=@"15";
    view3.frame=CGRectMake(width*2, 0, width, height);
    
    [_scrollView addSubview:view1];
    [_scrollView addSubview:view2];
    [_scrollView addSubview:view3];
    
    _scrollView.delegate=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)valueChanged:(id)sender {
    [UIView animateWithDuration:0.3f animations:^{
    CGRect size=self.view.frame;
    UIPageControl *pageControl=(UIPageControl *)sender;
    [_scrollView setContentOffset:CGPointMake(pageControl.currentPage*size.size.width, 0)];
    }];
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGRect size=self.view.frame;
    NSInteger page=scrollView.contentOffset.x/size.size.width;
    _pageControl.currentPage=page;
}

@end
