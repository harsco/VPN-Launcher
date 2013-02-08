//
//  ViewController.h
//  VPN Launcher
//
//  Created by Mahi on 10/12/12.
//  Copyright (c) 2012 Mahi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "vpnwebViewVC.h"
#import "tipsVC.h"
#import "VPNHD_WebView.h"


@interface ViewController : UIViewController
{
    IBOutlet UIButton* launchVPN;
    IBOutlet UIButton* launchTips;
}

@property(nonatomic,retain)UIButton* launchVPN;
@property(nonatomic,retain)UIButton* launchTips;


-(IBAction)onLaunchVPNClicked:(id)sender;
-(IBAction)onLaunchTipsClicked:(id)sender;

@end
