//
//  TestClass+AssociatedObject.h
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/5.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import "TestClass.h"
#import "RuntimeKit.h"
@interface TestClass (AssociatedObject)
@property (nonatomic, strong) NSString *dynamicAddProperty;
@end

