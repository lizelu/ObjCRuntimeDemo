//
//  RuntimeKit.m
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/4.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import "RuntimeKit.h"

@implementation RuntimeKit

/**
 获取成员变量
 
 @param class <#class description#>
 @return <#return value description#>
 */
+ (NSArray *)fetchIvarList:(Class) class {
    unsigned int count = 0;
    Ivar *ivarList = class_copyIvarList(class, &count);
    
    NSMutableArray *mutableList = [NSMutableArray arrayWithCapacity:count];
    for (unsigned int i = 0; i < count; i++ ) {
        const char *ivarName = ivar_getName(ivarList[i]);
        [mutableList addObject:[NSString stringWithUTF8String: ivarName]];
    }
    
    return [NSArray arrayWithArray:mutableList];
    return nil;
}

/**
 获取类的属性列表, 包括私有和公有属性，即定义在延展中的属性
 
 @param class Class
 @return 属性列表数组
 */
+ (NSArray *)fetchPropertyList:(Class) class {
    unsigned int count = 0;
    objc_property_t *propertyList = class_copyPropertyList(class, &count);
    
    NSMutableArray *mutableList = [NSMutableArray arrayWithCapacity:count];
    for (unsigned int i = 0; i < count; i++ ) {
        const char *propertyName = property_getName(propertyList[i]);
        [mutableList addObject:[NSString stringWithUTF8String: propertyName]];
    }
    
    return [NSArray arrayWithArray:mutableList];
}


/**
 获取类的属性列表：getter, setter, 对象方法等。但不能获取类方法

 @param class <#class description#>
 @return <#return value description#>
 */
+ (NSArray *)fetchMethodList:(Class) class {
    unsigned int count = 0;
    Method *methodList = class_copyMethodList(class, &count);
    
    NSMutableArray *mutableList = [NSMutableArray arrayWithCapacity:count];
    for (unsigned int i = 0; i < count; i++ ) {
        Method method = methodList[i];
        SEL methodName = method_getName(method);
        [mutableList addObject:NSStringFromSelector(methodName)];
    }
    
    return [NSArray arrayWithArray:mutableList];
}

/**
 获取协议列表
 
 @param class <#class description#>
 @return <#return value description#>
 */
+ (NSArray *)fetchProtocolList:(Class) class {
    unsigned int count = 0;
    __unsafe_unretained Protocol **protocolList = class_copyProtocolList(class, &count);
    
    NSMutableArray *mutableList = [NSMutableArray arrayWithCapacity:count];
    for (unsigned int i = 0; i < count; i++ ) {
        Protocol *protocol = protocolList[i];
        const char *protocolName = protocol_getName(protocol);
        [mutableList addObject:[NSString stringWithUTF8String: protocolName]];
    }
    
    return [NSArray arrayWithArray:mutableList];
    return nil;
}

/**
 方法交换
 
 @param class 交换方法所在的类
 @param method1 方法1
 @param method2 方法2
 */
+ (void)methodSwap: (Class)class firstMethod: (SEL)method1 secondMethod: (SEL)method2 {
    Method firstMethod = class_getInstanceMethod(class, method1);
    Method secondMethod = class_getInstanceMethod(class, method2);
    method_exchangeImplementations(firstMethod, secondMethod);
}
@end
