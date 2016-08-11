//
//  CountManager.m
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import "CountManager.h"

@implementation CountManager
- (CountManager* (^)(int))add{
    return ^(int number){
        self.result += number;
        return self;
    };
}
- (CountManager*(^)(int))sub{
    return ^(int number){
        self.result -= number;
        return self;
    };
}
- (CountManager*(^)(int))muti{
    return ^(int number){
        self.result *= number;
        return self;
    };
}
- (CountManager*(^)(int))exp{
    return ^(int number){
        self.result /= number;
        return self;
    };
}
@end
