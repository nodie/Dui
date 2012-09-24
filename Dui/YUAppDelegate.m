//
//  YUAppDelegate.m
//  Dui
//
//  Created by 於 琦峰 on 12-09-16.
//  Copyright (c) 2012年 於 琦峰. All rights reserved.
//

#import "YUAppDelegate.h"

#import "YUViewController.h"
#import "YUTableViewController.h"

@implementation YUAppDelegate

@synthesize section;

@synthesize row;

@synthesize provinces;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    YUTableViewController *table = [[YUTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    //self.viewController = [[YUViewController alloc] initWithNibName:@"YUViewController" bundle:nil];
    self.viewController = [[UINavigationController alloc] initWithRootViewController:table];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    

    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"Provineces" ofType:@"plist"];
    NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:plistPath];
    self.provinces = array;

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
