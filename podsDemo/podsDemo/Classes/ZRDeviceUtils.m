//
//  ZRDeviceUtils.m
//  ZRUtil
//
//  Created by liqg5 on 2018/3/22.
//  Copyright © 2018年 ziroomer. All rights reserved.
//

#import "ZRDeviceUtils.h"
#import <UIKit/UIKit.h>
//#import "ZRColorConstant.h"

@implementation ZRDeviceUtils

+ (void)zr_openUrl:(NSString *)phoneStr{
    NSString *tel = [[NSMutableString alloc] initWithFormat:@"telprompt://%@",phoneStr];
    //
    if (@available(iOS 10.0, *)) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:tel] options:@{} completionHandler:^(BOOL success) {
            
        }];
    } else {
        // Fallback on earlier versions
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:tel]];
    }
}

@end
