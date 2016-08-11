//
//  MakeCounet.h
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CountManager.h"
/*
 链式变成思想,代码可读性好
 
 特点:链式编程block的返回值是调用者自己
 */
@interface MakeCounet : NSObject

+ (int)zj_makeCount:(void(^)(CountManager*))code;

@end
