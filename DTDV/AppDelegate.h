//
//  AppDelegate.h
//  DTDV
//
//  Created by Vu Ngoc Bang on 4/2/13.
//  Copyright (c) 2013 Green Global. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,retain) UINavigationController *navigationController;
@property (nonatomic,retain) UITabBarController *tabBarController;
@property (nonatomic, retain) NSArray *viewControllers;

@end
