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
    NSInteger row=indexPath.row;
    cell.textLabel.text=[citys objectAtIndex:row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showWeather"]){
        //ZHWeatherViewController *controller=segue.destinationViewController;
    }
}

@end
