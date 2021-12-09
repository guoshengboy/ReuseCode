//
//  Father.m
//  ReuseCode
//
//  Created by 曹国盛 on 2021/12/8.
//

#import "Father.h"
#import <objc/runtime.h>

@implementation Father

+ (void)load{
    [self GSSwizzMethodOfInstanceWithClass:[self class] originSel:@selector(eat1) newSel:@selector(f_eat)];
}

+ (void)GSSwizzMethodOfInstanceWithClass:(Class)class originSel:(SEL)originSel newSel:(SEL)newSel{
    
    Method originM = class_getInstanceMethod(class, originSel);
    
    Method newM = class_getInstanceMethod(class, newSel);
    IMP newImp =  method_getImplementation(newM);
    
    BOOL addMethodSucess = class_addMethod(class, originSel, newImp, method_getTypeEncoding(newM));
    
    if (addMethodSucess) {
        class_replaceMethod(class, originSel, newImp, method_getTypeEncoding(newM));
    }else{
        method_exchangeImplementations(originM, newM);
    }
}



-(void)f_eat{
    NSLog(@"father f_eat");
}

@end
