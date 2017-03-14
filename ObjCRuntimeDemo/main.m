//
//  main.m
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/4.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestClass.h"
#import "TestClass+Category.h"
#import "TestClass+SwapMethod.h"

#import "TestClass+AssociatedObject.h"

#import "RuntimeKit.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *className = [RuntimeKit fetchClassName:[TestClass class]];
        NSLog(@"测试类的类名为：%@\n", className);
        
        NSArray *ivarList = [RuntimeKit fetchIvarList:[TestClass class]];
        NSLog(@"\n获取TestClass的成员变量列表:%@", ivarList);
        
        NSArray *propertyList = [RuntimeKit fetchPropertyList:[TestClass class]];
        NSLog(@"\n获取TestClass的属性列表:%@", propertyList);
        
        NSArray *methodList = [RuntimeKit fetchMethodList:[TestClass class]];
        NSLog(@"\n获取TestClass的方法列表：%@", methodList);
        
        NSArray *protocolList = [RuntimeKit fetchProtocolList:[TestClass class]];
        NSLog(@"\n获取TestClass的协议列表：%@", protocolList);
        TestClass *instance = [TestClass new];
        [instance publicTestMethod2];
        [instance performSelector:@selector(noThisMethod:) withObject:@"实例方法参数"];
        
        instance.dynamicAddProperty = @"我是动态添加的属性";
        NSLog(@"%@", instance.dynamicAddProperty);
        
        
        [instance swapMethod];
        [instance method1];
        
    }
    return 0;
}
