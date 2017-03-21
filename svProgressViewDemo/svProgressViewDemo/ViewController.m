//
//  ViewController.m
//  svProgressViewDemo
//
//  Created by 金波 on 2017/3/20.
//  Copyright © 2017年 Bob. All rights reserved.
//

#import "ViewController.h"
#import "svProgressView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)doShow:(id)sender {
    [svProgressView showProgressView:[UIImage imageNamed:@"loading.png"]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
         [svProgressView removeProgressView];
    });
}

- (IBAction)doRemove:(id)sender {
    [svProgressView removeProgressView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
