//
//  vpnwebViewVC.m
//  VPN Launcher
//
//  Created by Mahi on 10/12/12.
//  Copyright (c) 2012 Mahi. All rights reserved.
//

#import "vpnwebViewVC.h"

static int i = 0;

@interface vpnwebViewVC ()

@end

@implementation vpnwebViewVC

@synthesize vpnWebView;
@synthesize header;
@synthesize loadingIndicator;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIImage* image = [UIImage imageNamed:@"app_btn_back"];
    CGRect frameimg = CGRectMake(0, 0, image.size.width, image.size.height);
    
    UIButton *button = [[UIButton alloc] initWithFrame:frameimg];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onHomeClick:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *backButton =[[UIBarButtonItem alloc] initWithCustomView:button];
    
    self.header.topItem.leftBarButtonItem = backButton;
    
    [self.loadingIndicator setHidden:NO];
    
    [self.loadingIndicator startAnimating];
    
    self.vpnWebView.delegate = self;
    
    [self.vpnWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://webconnectchl.harsco.com/extportal"]]];
}

-(void)viewWillDisappear:(BOOL)animated
{
    i = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark-action methods
#pragma mark - Action Methods
-(void)onHomeClick:(id)sender
{
    [self.vpnWebView setDelegate:nil];
    [self dismissViewControllerAnimated:YES completion:NULL];
}




- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"success");
    
    i++;
    
    if(i==3)
    {
    
        if([self.loadingIndicator isAnimating])
        {
            [self.loadingIndicator stopAnimating];
            [self.loadingIndicator setHidden:YES];
        }
    }
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"error is %@",[error localizedDescription]);
    if([self.loadingIndicator isAnimating])
    {
        [self.loadingIndicator stopAnimating];
        [self.loadingIndicator setHidden:YES];
    }
}

@end
