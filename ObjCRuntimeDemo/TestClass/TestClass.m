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
    NSInteger _var1;
    int _var2;
    BOOL _var3;
    double _var4;
    float _var5;
}
@property (nonatomic, strong) NSMutableArray *privateProperty1;
@property (nonatomic, strong) NSNumber *privateProperty2;
@property (nonatomic, strong) NSDictionary *privateProperty3;
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
    [RuntimeKit addMethod:[self class] method:sel method:@selector(dynamicAddMethod:)];
    return YES;
}

#pragma mark - 方法交换
- (void)method1 {
    NSLog(@"我是Method1的实现");
}


- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {

    //查找方法签名
    NSMethodSignature *signature = [super methodSignatureForSelector:selector];
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:nil];
}


@end
