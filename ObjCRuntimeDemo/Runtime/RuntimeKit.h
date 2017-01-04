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
 获取类的属性列表

 @param class Class
 @return 属性列表数组
 */
+ (NSArray *)fetchPropertyList:(Class) class;
@end
