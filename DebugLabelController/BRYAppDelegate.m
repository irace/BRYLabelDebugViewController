//
//  BRYAppDelegate.m
//  DebugLabelController
//
//  Created by Bryan Irace on 8/29/13.
//  Copyright (c) 2013 Bryan Irace. All rights reserved.
//

#import "BRYAppDelegate.h"
#import "BRYViewController.h"

@implementation BRYAppDelegate

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = [[BRYViewController alloc] init];
    return YES;
}

@end
