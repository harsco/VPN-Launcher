//
//  vpnwebViewVC.h
//  VPN Launcher
//
//  Created by Mahi on 10/12/12.
//  Copyright (c) 2012 Mahi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface vpnwebViewVC : UIViewController<UIWebViewDelegate>
{
    IBOutlet UIWebView* vpnWebView;
    IBOutlet UINavigationBar* header;
    IBOutlet UIActivityIndicatorView* loadingIndicator;
}


@property(nonatomic,retain)UIWebView* vpnWebView;
@property(nonatomic,retain)UINavigationBar* header;
@property(nonatomic,retain)UIActivityIndicatorView* loadingIndicator;

@end
