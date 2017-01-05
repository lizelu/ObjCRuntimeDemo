//
//  TestClass.h
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/4.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass : NSObject<NSCoding, NSCopying>
@property (nonatomic, strong) NSArray *publicProperty1;
@property (nonatomic, strong) NSString *publicProperty2;

+ (void)classMethod: (NSString *)value;
- (void)publicTestMethod1: (NSString *)value1 Second: (NSString *)value2;
- (void)publicTestMethod2;

- (void)method1;
@end
