//
//  TestClass.m
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/4.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import "TestClass.h"
#import "RuntimeKit.h"
@interface TestClass(){
    NSString *_var1;
    NSString *_var2;
}
@property (nonatomic, strong) NSString *privateProperty1;
@property (nonatomic, strong) NSString *privateProperty2;
@end

@implementation TestClass

+ (void)classMethod: (NSString *)value {
    NSLog(@"publicTestMethod1");
}

- (void)publicTestMethod1: (NSString *)value1 Second: (NSString *)value2 {
    NSLog(@"publicTestMethod1");
}

- (void)publicTestMethod2 {
    NSLog(@"publicTestMethod2");
}

- (void)privateTestMethod1 {
    NSLog(@"privateTestMethod1");
}

- (void)privateTestMethod2 {
    NSLog(@"privateTestMethod2");
}

//运行时方法拦截
- (void)dynamicAddMethod: (NSString *) value {
    NSLog(@"OC替换的方法：%@", value);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    IMP method = [self instanceMethodForSelector:@selector(dynamicAddMethod:)];
    class_addMethod(self, sel, (IMP)method, "v@:*");
    return YES;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return nil;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {

}

#pragma mark - 方法交换

- (void)method1 {
    NSLog(@"我是Method1的实现");
}
@end
