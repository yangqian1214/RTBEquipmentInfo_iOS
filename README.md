# RTBEquipmentInfo_iOS
get your iPhone equipment info 

Installation with CocoaPods

CocoaPods is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like RTBEquipmentInfo_iOS in your projects. See the "Getting Started" guide for more information. You can install it with the following command:

$ gem install cocoapods

Podfile

To integrate RTBEquipmentInfo_iOS into your Xcode project using CocoaPods, specify it in your Podfile:


platform :ios, '9.0'

target 'TargetName' do
pod 'RTBEquipmentInfo_iOS'
end
Then, run the following command:

$ pod install


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


