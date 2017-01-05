//
//  TestClass+AssociatedObject.m
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/5.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import "TestClass+AssociatedObject.h"
#import "RuntimeKit.h"

@implementation TestClass (AssociatedObject)
#pragma mark - 动态属性关联
static char kDynamicAddProperty;
- (NSString *)dynamicAddProperty {
    return objc_getAssociatedObject(self, &kDynamicAddProperty);
}

- (void)setDynamicAddProperty:(NSString *)dynamicAddProperty {
    objc_setAssociatedObject(self, &kDynamicAddProperty, dynamicAddProperty, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
