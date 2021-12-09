//
//  ViewController.m
//  ReuseCode
//
//  Created by 曹国盛 on 2021/12/1.
//

#import "ViewController.h"
#import "UIColor+GSHelper.h"
#import "Father.h"
#import <objc/runtime.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Person *p = [[Person alloc] init];
    [p eat];
    
    Father *f = [[Father alloc] init];
   
}






@end
