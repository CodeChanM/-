//
//  CountManager.h
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CountManager : NSObject
@property (nonatomic,assign)int result;
- (CountManager*(^)(int))add;
- (CountManager*(^)(int))sub;
- (CountManager*(^)(int))muti;
- (CountManager*(^)(int))exp;
@end
