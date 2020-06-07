//
//  WUInteractiveTransition.h
//  ViewControllerTransition
//
//  Created by chavez on 2017/6/28.
//  Copyright © 2017年 chavez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WUDrawerTransition.h"

@interface WUInteractiveTransition : UIPercentDrivenInteractiveTransition

@property (nonatomic,weak) WULateralSlideConfiguration *configuration;
@property (nonatomic,assign) BOOL interacting;


- (instancetype)initWithTransitiontype:(WUDrawerTransitiontype)type;

+ (instancetype)interactiveWithTransitiontype:(WUDrawerTransitiontype)type;

- (void)addPanGestureForViewController:(UIViewController *)viewController;

@end



