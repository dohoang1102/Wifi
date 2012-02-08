//
//  SampleViewController.m
//  StumblerIOS5
//
//  Created by Guvener Gokce on 11/5/11.
//  Copyright (c) 2011 RIA/Cocoa Developer. All rights reserved.
//

#import "SampleViewController.h"
#import "SOLStumbler.h"

@implementation SampleViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];    
    
    
    /* STUMBLER CALL */
    NSLog(@"--------");
    
	SOLStumbler *networksManager = [[SOLStumbler alloc] init];
	[networksManager scanNetworks];
    
    
    /* SHOW Description On Screen */
    UITextView *txtview_log = [[UITextView alloc] initWithFrame:self.view.frame];
    [txtview_log setText:[networksManager description]];
    [self.view addSubview:txtview_log];
    [txtview_log release];
    
    
    
	NSLog(@"-- Wifi Description -- \n%@",[networksManager description]);
	NSLog(@"-- Wifi size --\n%d",[networksManager numberOfNetworks]);
    NSLog(@"--------");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
