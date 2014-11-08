//
//  ZHWeatherViewController.h
//  weatherApp
//
//  Created by zcg on 14-11-6.
//  Copyright (c) 2014年 zcg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHWeatherViewController : UIViewController<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;
- (IBAction)valueChanged:(id)sender;

@end
