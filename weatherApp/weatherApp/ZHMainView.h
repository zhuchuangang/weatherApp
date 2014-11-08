//
//  ZHMainView.h
//  weatherApp
//
//  Created by zcg on 14/11/6.
//  Copyright (c) 2014年 zcg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHMainView : UIView

@property (strong, nonatomic) IBOutlet UILabel *cityLabel;
@property (strong, nonatomic) IBOutlet UILabel *weatherLabel;
@property (strong, nonatomic) IBOutlet UILabel *tempLabel;

+(ZHMainView *)instanceView;

@end
