//
//  NetWorkTools.h
//  循环引用
//
//  Created by apple on 2016/10/11.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetWorkTools : NSObject

-(void)netWorkWithUrl:(void(^)(NSString *urlStr))urlStr;

@end
