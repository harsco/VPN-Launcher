//
//  documentViewerVC.h
//  VPN Launcher
//
//  Created by Mahi on 10/15/12.
//  Copyright (c) 2012 Mahi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface documentViewerVC : UIViewController<UIWebViewDelegate>
{
    IBOutlet UINavigationBar* header;
    IBOutlet UIWebView* documentView;
    
    NSString* urlString;
}

@property(nonatomic,retain)UINavigationBar* header;
@property(nonatomic,retain)UIWebView* documentView;


-(id)initWithURLString:(NSString*)url;

@end
