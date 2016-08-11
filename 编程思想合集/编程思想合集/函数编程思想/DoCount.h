//
//  DoCount.h
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DoCount;
@interface DoCount : NSObject
+ (int)doCount:(void(^)(int* result))block;

+ (int)doCount1:(int(^)(int result))block;
@end
