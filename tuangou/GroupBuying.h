//
//  GroupBuying.h
//  tuangou
//
//  Created by xhf on 16/1/18.
//  Copyright © 2016年 xhf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroupBuying : NSObject
@property(nonatomic,copy)NSString *buyCount;
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *price;
@property(nonatomic,copy)NSString *title;

-(instancetype)initWithDic:(NSDictionary *)dic;
+(instancetype)groupBuyingWithDic:(NSDictionary *)dic;

+(NSArray *)groupBuyingList;
@end
