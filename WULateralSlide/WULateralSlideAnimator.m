//
//  WULateralSlideAnimator.m
//  ViewControllerTransition
//
//  Created by chavez on 2017/6/29.
//  Copyright © 2017年 chavez. All rights reserved.
//

#import "WULateralSlideAnimator.h"
#import "WUDrawerTransition.h"

@interface WULateralSlideAnimator ()

@property (nonatomic,strong) WUInteractiveTransition *interactiveHidden;
@property (nonatomic,strong) WUInteractiveTransition *interactiveShow;

@end

@implementation WULateralSlideAnimator


- (instancetype)initWithConfiguration:(WULateralSlideConfiguration *)configuration {
    if (self = [super init]) {
        _configuration = configuration;
    }
    return self;
}

+ (instancetype)lateralSlideAnimatorWithConfiguration:(WULateralSlideConfiguration *)configuration {
    return [[self alloc] initWithConfiguration:configuration];
}

- (void)dealloc {
//    NSLog(@"%s",__func__);
}

- (void)setConfiguration:(WULateralSlideConfiguration *)configuration {
    _configuration = configuration;
    [self.interactiveShow setValue:configuration forKey:@"configuration"];
    [self.interactiveHidden setValue:configuration forKey:@"configuration"];

}

#pragma mark -UIViewControllerTransitioningDelegate
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [WUDrawerTransition transitionWithType:WUDrawerTransitiontypeShow animationType:_animationType configuration:_configuration];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [WUDrawerTransition transitionWithType:WUDrawerTransitiontypeHidden animationType:_animationType configuration:_configuration];
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator {
    return self.interactiveShow.interacting ? self.interactiveShow : nil;
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator {
//    NSLog(@"----------------------%@",self.interactiveHidden);
    return self.interactiveHidden.interacting ? self.interactiveHidden : nil;
}




@end
