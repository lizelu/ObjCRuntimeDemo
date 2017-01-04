//
//  TestClass.h
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/4.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass : NSObject
@property (nonatomic, strong) NSString *publicProperty1;
@property (nonatomic, strong) NSString *publicProperty2;

- (void)publicTestMethod1;
- (void)publicTestMethod2;
@end
