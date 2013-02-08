//
//  ViewController.m
//  VPN Launcher
//
//  Created by Mahi on 10/12/12.
//  Copyright (c) 2012 Mahi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


-(IBAction)onLaunchVPNClicked:(id)sender
{
     if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
     {
         vpnwebViewVC* vpnScreen = [[vpnwebViewVC alloc] init];
         [self presentViewController:vpnScreen animated:YES completion:NULL];
         
         [vpnScreen release];
     }
    
     else
     {
         VPNHD_WebView* vpnScreen = [[VPNHD_WebView alloc] init];
         [self presentViewController:vpnScreen animated:YES completion:NULL];
         [vpnScreen release];
     }
    
}

-(IBAction)onLaunchTipsClicked:(id)sender
{
    tipsVC* tipsList = [[tipsVC alloc] init];
    
    [self presentViewController:tipsList animated:YES completion:NULL];
}

@end
