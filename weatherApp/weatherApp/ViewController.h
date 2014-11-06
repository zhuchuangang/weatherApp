//
//  ViewController.h
//  weatherApp
//
//  Created by zcg on 14-11-6.
//  Copyright (c) 2014年 zcg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *cityTableView;
@property(strong,nonatomic) NSArray *citys;

@end

