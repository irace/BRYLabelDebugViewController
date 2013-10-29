//
//  BRYViewController.m
//  DebugLabelController
//
//  Created by Bryan Irace on 8/29/13.
//  Copyright (c) 2013 Bryan Irace. All rights reserved.
//

#import "BRYViewController.h"
#import "BRYView.h"

@interface BRYViewController ()

@end

@implementation BRYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BRYView *labelView = [[BRYView alloc] init];
    [self.view addSubview:labelView];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:labelView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:labelView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
}

@end
