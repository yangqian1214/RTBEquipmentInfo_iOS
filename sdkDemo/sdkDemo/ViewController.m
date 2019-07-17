//
//  ViewController.m
//  sdkDemo
//
//  Created by 杨倩倩 on 2019/7/17.
//  Copyright © 2019 杨倩倩. All rights reserved.
//

#import "ViewController.h"
#import <RTBEquipmentInfo_iOS/RTBEquipmentInfo_iOS.h>

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //获取所有相关信息
    NSDictionary *dic = [[RTBSystemServices sharedServices]allSystemInformation];
    NSLog(@"info:%@",dic);
    self.textView.text = [self dictionaryToJson:dic];
    //距离获取单个信息
    NSString *deviceName = [[RTBSystemServices sharedServices]deviceName];
    NSLog(@"deviceName = %@",deviceName);
    // Do any additional setup after loading the view.
}
//字典转json格式字符串：
- (NSString*)dictionaryToJson:(NSDictionary *)dic
{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

@end
