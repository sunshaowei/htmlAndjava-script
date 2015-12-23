//
//  ViewController.m
//  JS-OC
//
//  Created by apple on 15/10/26.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _webView.delegate=self;
    NSString*urlPath=[[NSBundle mainBundle] pathForResource:@"20151026.html" ofType:nil];
    NSURL*url=[NSURL URLWithString:urlPath];
    NSURLRequest*request=[NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}
//oc调js方法
- (IBAction)ocDiaoJs:(id)sender {
    [_webView stringByEvaluatingJavaScriptFromString:@"jingShiFun ()"];
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:   (UIWebViewNavigationType)navigationType
{
    NSString*path=request.URL.absoluteString;
   NSArray*pathArray=[path pathComponents];
    NSString*lastPath=pathArray[pathArray.count-1];
    if ([lastPath isEqual:@"ocMenth1"]) {
        [self chaoLinksDiaoOc];
        return NO;
    } else {
        return YES;
    }
}
-(void)chaoLinksDiaoOc{
NSLog(@"方法＝＝%s，行数＝＝%d",__FUNCTION__,__LINE__);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
