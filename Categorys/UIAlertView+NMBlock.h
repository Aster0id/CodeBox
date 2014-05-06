//
//  UIAlertView+NMBlock.h
//
//
//  Created by 牛萌 on 5/4/14.
//  Copyright (c) 2014 Self.牛萌. All rights reserved.
//

@import UIKit;

typedef void (^NMAlertViewCompletionBlock)(UIAlertView *alertView, NSInteger buttonIndex);

@interface UIAlertView (NMBlock) <UIAlertViewDelegate>

- (void)setCompletionBlock:(NMAlertViewCompletionBlock)completionBlock;

@end
