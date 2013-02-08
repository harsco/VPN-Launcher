//
//  tipsVC.h
//  VPN Launcher
//
//  Created by Mahi on 10/15/12.
//  Copyright (c) 2012 Mahi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "documentViewerVC.h"

@interface tipsVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UINavigationBar* header;
    IBOutlet UITableView* listView;
    
    NSMutableArray* dataArray;
}

@property(nonatomic,retain)UINavigationBar* header;
@property(nonatomic,retain)UITableView* listView;

@end
