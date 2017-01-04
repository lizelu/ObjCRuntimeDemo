//
//  RuntimeKit.h
//  ObjCRuntimeDemo
//
//  Created by Mr.LuDashi on 2017/1/4.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RuntimeKit : NSObject

/**
 获取成员变量

 @param class <#class description#>
 @return <#return value description#>
 */
+ (NSArray *)fetchIvarList:(Class) class;

/**
 获取类的属性列表, 包括私有和公有属性，即定义在延展中的属性

 @param class Class
 @return 属性列表数组
 */
+ (NSArray *)fetchPropertyList:(Class) class;

/**
 获取对象方法列表：getter, setter, 对象方法等。但不能获取类方法
 
 @param class <#class description#>
 @return <#return value description#>
 */
+ (NSArray *)fetchMethodList:(Class) class;


/**
 获取协议列表

 @param class <#class description#>
 @return <#return value description#>
 */
+ (NSArray *)fetchProtocolList:(Class) class;
@end
