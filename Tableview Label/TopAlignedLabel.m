//
//  TopAlignedLabel.m
//  Tableview Label
//
//  Created by Allan Zhang on 6/23/15.
//  Copyright (c) 2015 daspianist. All rights reserved.
//

#import "TopAlignedLabel.h"

@implementation TopAlignedLabel

- (void)drawTextInRect:(CGRect)rect {
    if (self.text) {
        CGSize expectSize = [self sizeThatFits:CGSizeMake(CGRectGetWidth(self.frame), CGFLOAT_MAX)];
        [super drawTextInRect:CGRectMake(0, 0, expectSize.width,expectSize.height)];
    } else {
        [super drawTextInRect:rect];
    }
}

@end
