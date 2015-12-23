//
//  ViewController.m
//  cookieWebView
//
//  Created by apple on 15/10/23.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString*urlStr=[[NSBundle mainBundle] pathForResource:@"cookie" ofType:@"html"];
    NSURL*url=[NSURL URLWithString:urlStr];
    NSURLRequest*request=[NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
