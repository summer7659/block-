//
//  NetWorkTools.m
//  循环引用
//
//  Created by apple on 2016/10/11.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "NetWorkTools.h"

@interface NetWorkTools ()
@property (nonatomic, copy) void (^finishedBlock)(NSString *);

@end

@implementation NetWorkTools

-(void)netWorkWithUrl:(void(^)(NSString *urlStr))urlStr{
    // 1. 使用属性记录 block
    self.finishedBlock = urlStr;
    
}


- (void)dealloc {
    NSLog(@"network tools 88");
}
@end
