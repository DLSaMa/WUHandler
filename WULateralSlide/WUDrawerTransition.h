//
//  WUDrawerTransition.h
//  ViewControllerTransition
//
//  Created by chavez on 2017/6/27.
//  Copyright © 2017年 chavez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WULateralSlideConfiguration.h"

typedef NS_ENUM(NSUInteger,WUDrawerTransitiontype) {
    WUDrawerTransitiontypeShow = 0,      // 显示抽屉
    WUDrawerTransitiontypeHidden,        // 隐藏抽屉
};


typedef NS_ENUM(NSUInteger,CWDrawerAnimationType) {
    CWDrawerAnimationTypeDefault = 0,
    CWDrawerAnimationTypeMask
};

@interface WUDrawerTransition : NSObject<UIViewControllerAnimatedTransitioning>

- (instancetype)initWithTransitionType:(WUDrawerTransitiontype)transitionType animationType:(CWDrawerAnimationType)animationType configuration:(WULateralSlideConfiguration *)configuration;

+ (instancetype)transitionWithType:(WUDrawerTransitiontype)transitionType animationType:(CWDrawerAnimationType)animationType configuration:(WULateralSlideConfiguration *)configuration;

@end


@interface CWMaskView : UIView<UIGestureRecognizerDelegate>

@property (nonatomic,copy) NSArray *toViewSubViews;

+ (instancetype)shareInstance;

+ (void)releaseInstance;

@end


UIKIT_EXTERN NSString *const WULateralSlideAnimatorKey;
UIKIT_EXTERN NSString *const CWLateralSlideMaskViewKey;
UIKIT_EXTERN NSString *const CWLateralSlideInterativeKey;

UIKIT_EXTERN NSString *const CWLateralSlidePanNoticationKey;
UIKIT_EXTERN NSString *const CWLateralSlideTapNoticationKey;

UIKIT_EXTERN NSString *const CWLateralSlideDirectionKey;



