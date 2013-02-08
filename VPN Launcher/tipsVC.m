//
//  tipsVC.m
//  VPN Launcher
//
//  Created by Mahi on 10/15/12.
//  Copyright (c) 2012 Mahi. All rights reserved.
//

#import "tipsVC.h"

@interface tipsVC ()

@end

@implementation tipsVC
@synthesize listView;
@synthesize header;

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

    
    dataArray = [[NSMutableArray alloc] initWithObjects:@"Set Harsco WallPaper",@"How To Install Apps From App Store",@"NewsTracker App User Guide",@"iOS6 Update Supported", nil];
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
    [self dismissViewControllerAnimated:YES completion:NULL];
}



#pragma mark Table View Methods



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
	
	//MobileRemoteAppDelegate *delegate = (MobileRemoteAppDelegate*) app.delegate;
	//delegate.appTimeStamp = CFAbsoluteTimeGetCurrent();
	
	static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    
    cell.textLabel.font = [UIFont fontWithName:@"Arial" size:16.0];
    
    cell.textLabel.text = [dataArray objectAtIndex:indexPath.row];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *path;
    
   if(indexPath.row == 0)
   {
       path = [[NSBundle mainBundle] pathForResource:@"HSC_Wallpaper" ofType:@"pdf"];
   }
   else if(indexPath.row == 1)
   {
      path = [[NSBundle mainBundle] pathForResource:@"HSC_AppStore" ofType:@"pdf"];
   }
   else if(indexPath.row == 2)
   {
       path = [[NSBundle mainBundle] pathForResource:@"NewsTrackerUserGuide" ofType:@"pdf"];
   }
   else
   {
        path = [[NSBundle mainBundle] pathForResource:@"iOS6" ofType:@"pdf"];
   }
    
    
   

    
    documentViewerVC* detailView = [[documentViewerVC alloc] initWithURLString:path];
    
    [self presentViewController:detailView animated:YES completion:NULL];
}

@end
