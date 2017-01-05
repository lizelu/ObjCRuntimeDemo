//
//  AddMethodClass.m
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/5.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import "AddMethodClass.h"

@implementation AddMethodClass
- (void)addMethodToTestClass {
//    [RuntimeKit addMethod:[TestClass class] method:@selector(newMethod:) imp];
    [[TestClass new] performSelector:@selector(newMethod:) withObject:@"参数"];
}

- (void)newMethod: (NSString *)value {
    NSLog(@"往TestClass中新添加的方法，参数为：%@", value);
}
@end
