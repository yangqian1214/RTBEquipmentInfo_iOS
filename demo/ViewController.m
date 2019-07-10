//
//  ViewController.m
//  demo
//
//  Created by 杨倩倩 on 2019/7/10.
//  Copyright © 2019 杨倩倩. All rights reserved.
//

#import "ViewController.h"
#import <RTBEquipmentInfo_iOS/RTBEquipmentInfo_iOS.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //获取所有相关信息
    NSDictionary *dic = [[RTBSystemServices sharedServices]allSystemInformation];
    NSLog(@"info:%@",dic);
    //距离获取单个信息
    NSString *deviceName = [[RTBSystemServices sharedServices]deviceName];
    NSLog(@"deviceName = %@",deviceName);
    // Do any additional setup after loading the view.
}


@end
