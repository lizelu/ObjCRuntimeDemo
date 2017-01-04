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
        NSArray *propertyList = [RuntimeKit fetchPropertyList:[TestClass class]];
        NSLog(@"TestClass的属性列表%@\n", propertyList);
    }
    return 0;
}
