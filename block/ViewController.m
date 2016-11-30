//
//  ViewController.m
//  block
//
//  Created by DaiWangsheng on 16/9/27.
//  Copyright © 2016年 DaiWangsheng. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic,copy) NSString * (^stringBlock)(NSString *str);
@property (nonatomic,copy) NSNumber * (^numberBlock)(NSString *str);
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _stringBlock = ^NSString *(NSString *str){
        return [str substringWithRange:NSMakeRange(0, 3)];
    };
    _numberBlock = ^NSNumber *(NSString *num){
        return (NSNumber *)num;
    };
}

- (IBAction)push:(id)sender {
    NSNumber *num = self.numberBlock(self.stringBlock(@"12abc"));
    NSLog(@"%@",num);
    
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.textBlock = ^(NSString *str){
        self.textView.text = str;
    };
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
