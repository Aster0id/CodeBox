//
//  UIAlertView+NMBlock.m
//
//
//  Created by 牛萌 on 5/4/14.
//  Copyright (c) 2014 Self.牛萌. All rights reserved.
//
#import "UIAlertView+NMBlock.h"
#import <objc/runtime.h>

@implementation UIAlertView (Block)

- (void)setCompletionBlock:(NMAlertViewCompletionBlock)completionBlock {
    objc_setAssociatedObject(self, @selector(completionBlock), completionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    if (completionBlock == NULL) {
        self.delegate = nil;
    }
    else {
        self.delegate = self;
    }
}

- (NMAlertViewCompletionBlock)completionBlock {
    return objc_getAssociatedObject(self, @selector(completionBlock));
}

#pragma mark - UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (self.completionBlock) {
        self.completionBlock(self, buttonIndex);
    }
}

@end
