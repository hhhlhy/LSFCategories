//
//  UIViewController+LSFRelease.m
//  LSFCategories
//
//  Created by 马美灵 on 2020/9/6.
//

#import "UIViewController+LSFRelease.h"
#include <objc/runtime.h>
static inline void swizzling_exchangeMethodWithSelector(Class clazz, SEL originalSelector, SEL exchangeSelector) {
    // 获取原方法
    Method originalMethod = class_getInstanceMethod(clazz, originalSelector);
    
    // 获取需要交换的方法
    Method exchangeMethod = class_getInstanceMethod(clazz, exchangeSelector);
    
    if (!originalMethod || !exchangeMethod) {
        return;
    }
    
    if (class_addMethod(clazz, originalSelector, method_getImplementation(exchangeMethod), method_getTypeEncoding(exchangeMethod))) {
        class_replaceMethod(clazz, exchangeSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    }else{
        method_exchangeImplementations(originalMethod, exchangeMethod);
    }
    
}

@implementation UIViewController (LSFRelease)
+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        swizzling_exchangeMethodWithSelector([self class],
                                             NSSelectorFromString(@"dealloc"),
                                             @selector(qp_dealloc));
    });
}

- (void)qp_dealloc {
    NSLog(@"%s被销毁了", object_getClassName(self));
    [self qp_dealloc];
}

@end
