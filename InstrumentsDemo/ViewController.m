//
//  ViewController.m
//  InstrumentsDemo
//
//  Created by li yuanchao on 2019/6/19.
//  Copyright © 2019 li yuanchao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 100, 100, 44);
    [button setTitle:@"测试" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)clicked:(UIButton *)sender
{
    [self testA];
}

- (void)testA
{
    NSMutableArray *array = [@[] mutableCopy];
    for (int i = 0; i < 10000; i++) {
//        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"HH:mm:ss"];
            NSString *str = [formatter stringFromDate:[NSDate date]];
//            @synchronized (array) {
                [array addObject:str];
//            }
//        });
    }
//    [self testB];
}

//- (void)testB
//{
//    for (int i = 0; i < 10000; i++) {
//        NSObject *o = [[NSObject alloc] init];
//    }
//}

@end
