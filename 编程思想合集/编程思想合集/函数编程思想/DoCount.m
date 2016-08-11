//
//  DoCount.m
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import "DoCount.h"

@implementation DoCount

+ (int)doCount:(void (^)(int*))block{
    int res;
    block(&res);
    return res;
}

+ (int)doCount1:(int (^)(int))block{
    int res;
    return block(res);
}
@end
