//
//  ViewController.m
//  weatherApp
//
//  Created by zcg on 14-11-6.
//  Copyright (c) 2014年 zcg. All rights reserved.
//

#import "ViewController.h"
#import "ZHWeatherViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize citys;

- (void)viewDidLoad {
    [super viewDidLoad];
    citys=[[NSArray alloc] initWithObjects:@"芜湖",@"南京",@"上海", nil];
    _cityTableView.delegate=self;
    _cityTableView.dataSource=self;
    CGFloat R  = (CGFloat) 230/255.0;
    CGFloat G = (CGFloat) 67/255.0;
    CGFloat B = (CGFloat) 31/255.0;
    CGFloat alpha = (CGFloat) 1.0;
    
    UIColor *colorRGB = [UIColor colorWithRed: R
                                        green: G
                                         blue: B
                                        alpha: alpha
                         ];
    [_cityTableView setBackgroundColor:colorRGB];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //[self.navigationController setNavigationBarHidden:YES animated:YES];
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [citys count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CELL_ID=@"TABLE_CELL_ID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CELL_ID];
//    if (cell!=nil) {
//        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_ID];
//    }
    UIColor *colorRGB = [UIColor colorWithRed: 230/255.0
                                        green: 67/255.0
                                         blue: 31/255.0
                                        alpha: 1.0
                         ];
    [cell setBackgroundColor:colorRGB];
    
    NSInteger row=indexPath.row;
    cell.textLabel.text=[citys objectAtIndex:row];
    cell.textLabel.font=[UIFont fontWithName:@"System" size:12];
    UIColor *textColor = [UIColor colorWithRed: 255.0/255.0
                                        green: 255.0/255.0
                                         blue: 255.0/255.0
                                        alpha: 1.0
                         ];
    [cell.textLabel setTextColor:textColor];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showWeather"]){
        ZHWeatherViewController *controller=segue.destinationViewController;
        NSIndexPath *indexPath=[_cityTableView indexPathForSelectedRow];
        controller.currentPage=[indexPath row];
    }
}

@end
