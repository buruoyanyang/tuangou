//
//  ViewController.m
//  tuangou
//
//  Created by xhf on 16/1/18.
//  Copyright © 2016年 xhf. All rights reserved.
//

#import "ViewController.h"
#import "GroupBuying.h"
@interface ViewController () <UITableViewDataSource>
@property(nonatomic,strong)NSArray *groupBuyings;

@end

@implementation ViewController


//懒加载
-(NSArray *)groupBuyings
{
    if (_groupBuyings == nil) {
        _groupBuyings = [GroupBuying groupBuyingList];
    }
    return _groupBuyings;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


//实现数据源方法
#pragma mark - 数据源方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.groupBuyings.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //创建可重用的cell
    static NSString *reuseId = @"gb";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseId];
    }
    GroupBuying *gb = self.groupBuyings[indexPath.row];
    cell.textLabel.text = gb.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"￥%@",gb.price];
    cell.imageView.image = [UIImage imageNamed:gb.icon];
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
