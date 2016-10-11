//
//  SecViewController.m
//  循环引用
//
//  Created by apple on 2016/10/10.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "SecViewController.h"
#import "Car.h"
#import "NetWorkTools.h"

typedef void(^block)();

@interface SecViewController ()

@property (copy, nonatomic) block testBlock;
@property (copy, nonatomic) NSString *testString;

@property(nonatomic,strong)NetWorkTools *tool;

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    UIButton *bu = [UIButton buttonWithType:(UIButtonTypeSystem)];
    bu.frame = CGRectMake(20, 20, 80, 80);
    bu.backgroundColor = [UIColor blueColor];
    [self.view addSubview:bu];
    [bu addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];

//    __weak typeof(self) weakSelf = self;
//    self.testBlock = ^(){
//        NSString *str = self.testString;
//    };

    
//    Car *car = [[Car alloc] init];
//    [car testBlockRetailCycle];
    
//   __weak typeof(self) weakSelf = self;
//    NetWorkTools *tool = [[NetWorkTools alloc] init];
//    self.tool = tool;
//    [self.tool netWorkWithUrl:^(NSString *urlStr) {
//        self.view.backgroundColor = [UIColor whiteColor];
//    }];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.view.backgroundColor = [UIColor whiteColor];
    });
    
}

-(void)click{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

-(void)dealloc{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
