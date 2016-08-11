//
//  ViewController.m
//  编程思想合集
//
//  Created by 陈志坚 on 16/7/21.
//  Copyright © 2016年 陈志坚. All rights reserved.
//

#import "ViewController.h"
#import "MakeCounet.h"

#import "DemoClass.h"
#import "NSObject+KVO.h"

#import "DoCount.h"
@interface ViewController ()
@property (nonatomic,strong)DemoClass *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    [self function1];
//    [self function2];
    [self reactive];
}
/*
 链式编程思想：是将多个操作（多行代码）通过点号(.)链接在一起成为一句代码,使代码可读性好。a(1).b(2).c(3)
 
 链式编程特点：方法的返回值是block,block必须有返回值（本身对象），block参数（需要操作的值）
 
 代表：masonry框架。
 */
- (void)link{
    int result = [MakeCounet zj_makeCount:^(CountManager *mgn) {
        mgn.add(5).sub(1).muti(6).exp(8);
    }];
    NSLog(@"%d",result);
}
/*响应式编程思想--模拟KVO实现
 响应式编程思想：不需要考虑调用顺序，只需要知道考虑结果，类似于蝴蝶效应，产生一个事件，会影响很多东西，这些事件像流一样的传播出去，然后影响结果，借用面向对象的一句话，万物皆是流。
 
 代表：KVO运用。
 */

- (void)reactive{
    DemoClass* p = [DemoClass new];
    self.p = p;
//    [p addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew  context:nil];
                    p;
    [p zj_addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.p.name = @"1234";
    
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSLog(@"发生改变%@",self.p.name);
}
/*
 
 函数式编程思想：是把操作尽量写成一系列嵌套的函数或者方法调用。
 
 函数式编程本质:就是往方法中传入Block,方法中嵌套Block调用，把代码聚合起来管理
 函数式编程特点：每个方法必须有返回值（本身对象）,把函数或者Block当做参数,block参数（需要操作的值）block返回值（操作结果）
 
 代表：ReactiveCocoa。
 */
- (void)function1{
    int res = [DoCount doCount:^(int* result) {
        *result = 6;
        *result = *result + 3;
 
    }];
    NSLog(@"%d",res);
}
- (void)function2{
    int res= [DoCount doCount1:^int(int result) {
        result += 1;
        result += 2;
        return result;
    }];
    NSLog(@"%d",res);
}

/*
 尽管用 __block 修饰,但若将a当做参数穿入block进行操作 仍然不会改变a的值
 因此想修改这个穿入当做参数值  只能通过穿入地址,通过地址访问
 */
- (void)blockTest{
    __block int a = 9;
    
    void(^blcok)(int) = ^(int num){
        num += 1;
    };
    blcok(a);
    NSLog(@"%d",a);
    

}
@end
