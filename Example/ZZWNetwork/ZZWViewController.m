//
//  ZZWViewController.m
//  ZZWNetwork
//
//  Created by a595429717@163.com on 09/11/2022.
//  Copyright (c) 2022 a595429717@163.com. All rights reserved.
//

#import "ZZWViewController.h"
#import "ZZWNetworkModel.h"
#import "ZZWNetworkManager.h"
#import "WebKit/WKWebView.h"
@interface ZZWViewController ()

@end

@implementation ZZWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ZZWNetworkModel *model = [ZZWNetworkModel new];
    model.ipString = @"test-api-app.hibotella.love";
    model.cmd = @"operate/getBlog?titleKey=legal_statement";
    NSString *urlStr = [model getUrlString];
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
