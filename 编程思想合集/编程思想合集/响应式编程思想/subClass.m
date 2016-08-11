//
//  subClass.m
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import "subClass.h"
#import <objc/message.h>
extern NSString *const observerKey;
@implementation subClass
- (void)setName:(NSString *)name{
    [super setName:name];
    //获取观察者对象
    id objc = objc_getAssociatedObject(self, observerKey);
    //通知外界
    [objc observeValueForKeyPath:@"name" ofObject:self change:nil context:nil];
    
}
@end
