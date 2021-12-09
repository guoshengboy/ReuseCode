//
//  UIViewController+Runtime.m
//  ReuseCode
//
//  Created by 曹国盛 on 2021/12/7.
//

#import "UIViewController+Runtime.h"
#import "NSObject+GSRuntime.h"

@implementation UIViewController (Runtime)

+(void)load{
//    [self GSSwizzMethodOfInstanceWithClass:[self class] originSel:@selector(viewDidLoad) newSel:@selector(GSViewDidLoad)];
}


- (void)GSViewDidLoad{
    NSLog(@"先走了%@方法", NSStringFromSelector(_cmd));
    [self GSViewDidLoad];
}

@end
