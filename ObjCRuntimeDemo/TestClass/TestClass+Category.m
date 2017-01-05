//
//  TestClass+Category.m
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/4.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import "TestClass+Category.h"
#import <objc/runtime.h>

@implementation TestClass (Category)
- (void)categoryMethod {
    NSLog(@"categoryMethod");
}


#pragma mark - 动态属性关联
static char kDynamicAddProperty;
- (NSString *)dynamicAddProperty {
   return objc_getAssociatedObject(self, &kDynamicAddProperty);
}

- (void)setDynamicAddProperty:(NSString *)dynamicAddProperty {
    objc_setAssociatedObject(self, &kDynamicAddProperty, dynamicAddProperty, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end

