//
//  ViewController.m
//  HtmlTemplate
//
//  Created by Corrado Ubezio on 23/03/13.
//  Copyright (c) 2013 Corerd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIWebView *webView;
    NSURL *homeUrl;
}

@synthesize iPhoneWebView;
@synthesize iPadWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Select the connection between the IBOutlet and the UIWebView
    // according to which device is being used.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        webView = iPhoneWebView;
    } else {
        webView = iPadWebView;
    }
    
    // http://stackoverflow.com/questions/6420925/load-resources-from-relative-path-using-local-html-in-uiwebview
    homeUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"www/html"]];
    [webView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    [self setIPhoneWebView:nil];
    [self setIPadWebView:nil];
    [super viewDidUnload];
}

- (IBAction)iPhoneBtnHome:(id)sender
{
    [webView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
}

- (IBAction)iPadBtnHome:(id)sender
{
    [webView loadRequest:[NSURLRequest requestWithURL:homeUrl]];
}

@end
