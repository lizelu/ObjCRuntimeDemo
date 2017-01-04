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

#import "RuntimeKit.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *ivarList = [RuntimeKit fetchIvarList:[TestClass class]];
        NSLog(@"\nTestClass的成员变量列表:%@", ivarList);
        
        NSArray *propertyList = [RuntimeKit fetchPropertyList:[TestClass class]];
        NSLog(@"\nTestClass的属性列表:%@", propertyList);
        
        NSArray *methodList = [RuntimeKit fetchMethodList:[TestClass class]];
        NSLog(@"\nTestClass的方法列表：%@", methodList);
        
        NSArray *protocolList = [RuntimeKit fetchProtocolList:[TestClass class]];
        NSLog(@"\nTestClass的协议列表：%@", protocolList);
    }
    return 0;
}
