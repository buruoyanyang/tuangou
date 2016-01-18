//
//  GroupBuying.m
//  tuangou
//
//  Created by xhf on 16/1/18.
//  Copyright © 2016年 xhf. All rights reserved.
//

#import "GroupBuying.h"

@implementation GroupBuying
-(instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

+(instancetype)groupBuyingWithDic:(NSDictionary *)dic
{
    return [[self alloc]initWithDic:dic];
}

+(NSArray *)groupBuyingList
{
    //加载plist
    NSString *path = [[NSBundle mainBundle]pathForResource:@"tgs" ofType:@"plist"];
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    //字典转模型
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSDictionary *dic in dicArray) {
        GroupBuying *groupBuying = [GroupBuying groupBuyingWithDic:dic];
        [tempArray addObject:groupBuying];
    }
    return tempArray;
}


@end
