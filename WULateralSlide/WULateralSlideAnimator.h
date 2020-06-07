//
//  WULateralSlideAnimator.h
//  ViewControllerTransition
//
//  Created by chavez on 2017/6/29.
//  Copyright © 2017年 chavez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WULateralSlideConfiguration.h"
#import "WUInteractiveTransition.h"

@interface WULateralSlideAnimator : NSObject<UIViewControllerTransitioningDelegate>

@property (nonatomic,strong) WULateralSlideConfiguration *configuration;
@property (nonatomic,assign) CWDrawerAnimationType animationType;

- (instancetype)initWithConfiguration:(WULateralSlideConfiguration *)configuration;

+ (instancetype)lateralSlideAnimatorWithConfiguration:(WULateralSlideConfiguration *)configuration;

@end
