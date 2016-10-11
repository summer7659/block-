//
//  Car.m
//  循环引用
//
//  Created by apple on 2016/10/10.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "Car.h"

typedef void(^block)();

@interface Car ()

@property(nonatomic,weak)Person *perA;

@property(nonatomic,strong)block myBlock;

@end

@implementation Car

-(void)testBlockRetailCycle{
    Person *objA = [[Person alloc] init];
    __weak typeof(objA) weakObjA = objA;
    self.myBlock = ^(){
        [weakObjA doSomething];
    };
    objA.carB = self;
}


-(void)dealloc{
    NSLog(@"1212121");
}

@end
