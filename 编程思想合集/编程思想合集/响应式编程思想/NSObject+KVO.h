//
//  NSObject+KVO.h
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)
- (void)zj_addObserver:(NSObject *)obj forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)option context:(void *)context;
;
@end
