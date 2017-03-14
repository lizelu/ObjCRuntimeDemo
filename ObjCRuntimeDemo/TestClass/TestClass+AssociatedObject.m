//
//  TestClass+AssociatedObject.m
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/5.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import "TestClass+AssociatedObject.h"
#pragma mark - 动态属性关联
static char kDynamicAddProperty;
@implementation TestClass (AssociatedObject)
/**
 getter方法
 
 @return 返回关联属性的值
 */
- (NSString *)dynamicAddProperty {
    return objc_getAssociatedObject(self, &kDynamicAddProperty);
}


/**
 setter方法
 
 @param dynamicAddProperty 设置关联属性的值
 */
- (void)setDynamicAddProperty:(NSString *)dynamicAddProperty {
    objc_setAssociatedObject(self, &kDynamicAddProperty, dynamicAddProperty, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
