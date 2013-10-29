//
//  BRYView.m
//  DebugLabelController
//
//  Created by Bryan Irace on 8/29/13.
//  Copyright (c) 2013 Bryan Irace. All rights reserved.
//

#import "BRYView.h"

@interface BRYView()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *detailLabel;

@end

@implementation BRYView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
        self.layer.cornerRadius = 4;
        
        UILabel *label = [[UILabel alloc] init];
        label.text = @"Some text";
        label.translatesAutoresizingMaskIntoConstraints = NO;
        label.textColor = [UIColor whiteColor];
        [self addSubview:label];
        self.label = label;
        
        UILabel *detailLabel = [[UILabel alloc] init];
        detailLabel.text = @"Some text";
        detailLabel.textColor = [UIColor whiteColor];
        detailLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:detailLabel];
        self.detailLabel = label;
        
        NSMutableArray *constraints = [[NSMutableArray alloc] init];
        
        [constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[label]-20-[detailLabel]"
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:NSDictionaryOfVariableBindings(label, detailLabel)]];
        
        [constraints addObject:[NSLayoutConstraint constraintWithItem:self.label
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1.0
                                                             constant:0.0]];
        
        [constraints addObject:[NSLayoutConstraint constraintWithItem:self.detailLabel
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1.0
                                                             constant:0.0]];
        
        [self addConstraints:constraints];
    }
    
    return self;
}

- (CGSize)intrinsicContentSize {
    CGSize labelSize = self.label.intrinsicContentSize;
    CGSize detailLabelSize = self.detailLabel.intrinsicContentSize;
    
    return CGSizeMake(MAX(labelSize.width, detailLabelSize.width), labelSize.height + detailLabelSize.height + 20);
}

@end
