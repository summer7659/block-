//
//  ViewController.m
//  循环引用
//
//  Created by apple on 2016/9/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

typedef void(^block)();

@interface ViewController ()

@property (copy, nonatomic) block myBlock;
@property (copy, nonatomic) NSString *blockString;


@end

@implementation ViewController

//{
//    void (^_cycleReferenceBlock)(void);
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    _cycleReferenceBlock = ^{
//        NSLog(@"%@", self);
//    };
    
    UIButton *bu = [UIButton buttonWithType:(UIButtonTypeSystem)];
    bu.frame = CGRectMake(20, 20, 80, 80);
    bu.backgroundColor = [UIColor redColor];
    [self.view addSubview:bu];
    [bu addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    
    self.myBlock = ^(){
        NSString *str = self.blockString;
    };
    
    
    
}

-(void)click{
    SecViewController *vc = [[SecViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
