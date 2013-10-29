//
//  BRYAppDelegate.h
//  DebugLabelController
//
//  Created by Bryan Irace on 8/29/13.
//  Copyright (c) 2013 Bryan Irace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRYAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
