//
//  ViewController.m
//  GitProject
//
//  Created by liulei on 2018/4/4.
//  Copyright © 2018年 KOTEI. All rights reserved.
//

#import "ViewController.h"
// "Sources/ImageSource"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.view setBackgroundColor:[UIColor redColor]];
    UIImageView* imageV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cat1"]];
//    imageV.image = [UIImage imageNamed:@"1"];
    imageV.frame = CGRectMake(20, 64, 30, 30);
    imageV.backgroundColor = [UIColor redColor];
    [self.view addSubview:imageV];


    NSString* path =   [[NSBundle mainBundle] bundlePath];
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:
                           @"IMG_01" ofType:@"jpg"];
    UIImage *appleImage = [[UIImage alloc] initWithContentsOfFile:imagePath];
    imageV.image = appleImage;
    NSLog(@"path = %@",path);

    NSArray *allBun = [NSBundle allBundles];
    NSLog(@"path = %@",allBun);

//    //inDirectory参数可有可无
//    NSString *earth = [[NSBundle mainBundle] pathForResource:@"IMG_01" ofType:@"jpg" inDirectory:@"ImageSource/image"];
//    NSLog(@"path = %@",earth);

//可行

//    NSString* path1 =  [[NSBundle mainBundle] pathForResource:@"ImageSource/images/IMG_01" ofType:@"jpg"];
//    NSLog(@"path = %@",path1);


    //可行
    NSString* resourceBundle =  [[NSBundle mainBundle] pathForResource:@"ImageSource/Settings" ofType:@"bundle"];
     NSString *earth = [[NSBundle bundleWithPath:resourceBundle] pathForResource:@"IMG_01"ofType:@"jpg"];

    appleImage = [[UIImage alloc] initWithContentsOfFile:earth];
    imageV.image = appleImage;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
