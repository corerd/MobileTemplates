//
//  ViewController.m
//  MindReader-iOS
//
//  Created by Corrado Ubezio on 09/03/13.
//  Copyright (c) 2013 Corerd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize iPhoneWebView;
@synthesize iPadWebView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // Select the connection between the IBOutlet and the UIWebView
    // according to which device is being used.
    UIWebView *webView;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        webView = iPhoneWebView;
    } else {
        webView = iPadWebView;
    }
    
/*
    //First we load up the index.html file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSData *htmlData = [NSData dataWithContentsOfFile:path];
    
    //Next we need to set up a proper base URL for our files
    NSString *resourceURL = [[NSBundle mainBundle] resourcePath];
    NSLog(@"%@", resourceURL); // <- the URL in the raw still needs some cleaning
    // Need to be double-slashes to work correctly with UIWebView, so change all "/" to "//"
    resourceURL = [resourceURL stringByReplacingOccurrencesOfString:@"/" withString:@"//"];
    // Also need to replace all spaces with "%20"
    resourceURL = [resourceURL stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    //And make a proper URL
    NSURL *baseURL = [NSURL URLWithString:[NSString stringWithFormat:@"file:/%@//www//src//",resourceURL]];

    //Finally let's load up the html data and pass the Base URL for the CSS and Javascript files
    [webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:baseURL];
*/
    
    // http://stackoverflow.com/questions/6420925/load-resources-from-relative-path-using-local-html-in-uiwebview
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"www"]];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setIPhoneWebView:nil];
    [self setIPadWebView:nil];
    [super viewDidUnload];
}
@end
