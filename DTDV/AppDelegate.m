//
//  AppDelegate.m
//  DTDV
//
//  Created by Vu Ngoc Bang on 4/2/13.
//  Copyright (c) 2013 Green Global. All rights reserved.
//

#import "AppDelegate.h"
#import "Homes.h"
#import "EmploysIndex.h"
#import "PeriodsIndex.h"
#import "Searchs.h"
#import "CommonCss.h"
#import "PostsIndex.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    Homes *homes = [[Homes alloc] initWithNibName:@"Homes" bundle:nil];
    _navigationController = [[UINavigationController alloc] initWithRootViewController:homes];
    _navigationController.navigationBar.tintColor = [CommonCss getTintColor];
    
    //init tabbar
    [self initTabbar];
    
    // set view
    self.window.rootViewController = _tabBarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)initTabbar{
    // navi HOME
    Homes *homes = [[Homes alloc] initWithNibName:@"Homes" bundle:nil];
    UINavigationController *homeNC = [[UINavigationController alloc] initWithRootViewController:homes];
    homeNC.tabBarItem.title = @"Trang chủ";
    homeNC.navigationBar.tintColor = [CommonCss getTintColor];
    homeNC.tabBarItem.image = [UIImage imageNamed:@"tabbar_home.png"];
    
    // navi Employs
    EmploysIndex *employsIndex = [[EmploysIndex alloc] initWithNibName:@"EmploysIndex" bundle:nil];
    UINavigationController *employsIndexNC = [[UINavigationController alloc] initWithRootViewController:employsIndex];
    employsIndexNC.tabBarItem.title = @"Danh Tướng";
    employsIndexNC.navigationBar.tintColor = [CommonCss getTintColor];
    employsIndexNC.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile.png"];
    
    
    // navi Periods
    PeriodsIndex *periodsIndex = [[PeriodsIndex alloc] initWithNibName:@"PeriodsIndex" bundle:nil];
    UINavigationController *periodsIndexNC = [[UINavigationController alloc] initWithRootViewController:periodsIndex];
    periodsIndexNC.tabBarItem.title = @"Thời kỳ";
    periodsIndexNC.navigationBar.tintColor = [CommonCss getTintColor];
    periodsIndexNC.tabBarItem.image = [UIImage imageNamed:@"tabbar_report.png"];
    
    // navi Search
    Searchs *searchs = [[Searchs alloc] initWithNibName:@"Searchs" bundle:nil];
    UINavigationController *searchNC = [[UINavigationController alloc] initWithRootViewController:searchs];
    searchNC.tabBarItem.title = @"Tìm kiếm";
    searchNC.navigationBar.tintColor = [CommonCss getTintColor];
    searchNC.tabBarItem.image = [UIImage imageNamed:@"tabbar_search.png"];
    
    // navi Search
    PostsIndex *postsIndex = [[PostsIndex alloc] initWithNibName:@"PostsIndex" bundle:nil];
    UINavigationController *postsIndexNC = [[UINavigationController alloc] initWithRootViewController:postsIndex];
    postsIndexNC.tabBarItem.title = @"Bài viết";
    postsIndexNC.navigationBar.tintColor = [CommonCss getTintColor];
    postsIndexNC.tabBarItem.image = [UIImage imageNamed:@"tabbar_search.png"];
    
    //add tab
    _viewControllers = [[NSArray alloc] initWithObjects: homeNC, employsIndexNC, periodsIndexNC,postsIndexNC, searchNC, nil];
    
    _tabBarController = [[UITabBarController alloc] init];
    _tabBarController.tabBar.tintColor = [CommonCss getTintColor];
    _tabBarController.tabBar.selectedImageTintColor = [UIColor blueColor];
    _tabBarController.tabBar.selectionIndicatorImage = [UIImage imageNamed:@"tabbar_selected_item.png"];
    _tabBarController.viewControllers = _viewControllers;
    
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
