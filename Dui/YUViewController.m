//
//  YUViewController.m
//  Dui
//
//  Created by 於 琦峰 on 12-09-16.
//  Copyright (c) 2012年 於 琦峰. All rights reserved.
//

#import "YUViewController.h"
#import "YUTableViewController.h"

@interface YUViewController ()

@end

@implementation YUViewController
@synthesize lblinfo = _lblinfo;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//- (void) viewDidAppear:(BOOL)animated
//{
//    
//    YUTableViewController *table = [[YUTableViewController alloc] init];
//    [self presentModalViewController:table animated:YES];
//    
//}

- (void)viewDidUnload
{
    _lblinfo = nil;
    [self setLblinfo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
