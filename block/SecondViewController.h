//
//  SecondViewController.h
//  block
//
//  Created by DaiWangsheng on 16/9/27.
//  Copyright © 2016年 DaiWangsheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (nonatomic,copy) void (^textBlock)(NSString *str);

@end
