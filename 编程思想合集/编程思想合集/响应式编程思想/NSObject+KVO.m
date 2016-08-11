//
//  NSObject+KVO.m
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import "NSObject+KVO.h"
#import <objc/message.h>
#import "subClass.h"
NSString *const observerKey = @"keypath";
@implementation NSObject (KVO)
- (void)zj_addObserver:(NSObject *)obj forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)option context:(void *)context{
    //保存观察对象
    objc_setAssociatedObject(self, (__bridge const void *)(observerKey), obj, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //更改方法监听对象的isa指针,使指针指向他的一个子类
    object_setClass(self, [subClass class]);
    //子类重写set方法,在set方法中通知观察者

}
@end
