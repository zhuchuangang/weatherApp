//
//  ZHMainView.m
//  weatherApp
//
//  Created by zcg on 14/11/6.
//  Copyright (c) 2014年 zcg. All rights reserved.
//

#import "ZHMainView.h"

@implementation ZHMainView

@synthesize cityLabel;
@synthesize weatherLabel;
@synthesize tempLabel;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+(ZHMainView *)instanceView
{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:@"ZHMainView" owner:nil options:nil];
    return [nibView objectAtIndex:0];
}

@end
