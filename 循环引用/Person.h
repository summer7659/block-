//
//  Person.h
//  循环引用
//
//  Created by apple on 2016/10/10.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//#import "Car.h"

@class Car;
@interface Person : NSObject

@property(nonatomic,weak)Car *carB;

- (void)doSomething;

@end
