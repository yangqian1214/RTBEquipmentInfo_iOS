# RTBEquipmentInfo_iOS
get your iPhone equipment info 

改库支持cocoapods引入，方便大家使用，

cocoapods引入编辑Podfile 中加入   pod 'RTBEquipmentInfo_iOS'

##调用方法

pod引入RTBEquipmentInfo_iOS.framework成功之后，可以引入头文件#import <RTBEquipmentInfo_iOS/RTBEquipmentInfo_iOS.h>

调用代码示例如下


    //获取所有相关信息
    NSDictionary *dic = [[RTBSystemServices sharedServices]allSystemInformation];
    NSLog(@"info:%@",dic);
    self.textView.text = [self dictionaryToJson:dic];
    //获取单个信息
    NSString *deviceName = [[RTBSystemServices sharedServices]deviceName];
    NSLog(@"deviceName = %@",deviceName);


