//
//  ___FILENAME___.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
#import "VIPERRouter.h"

@implementation VIPERRouter

#pragma Public Methods

+ (void)presentVIPERFromView:(UIViewController *)fromView provider:(VIPERProvider *)provider{
    [self presentVIPERFromView:fromView provider:provider completion:nil];
}

+ (void)pushVIPERFromView:(UIViewController *)fromView provider:(VIPERProvider *)provider{
    [self pushVIPERFromView:fromView provider:provider completion:nil];
}

+ (void)presentVIPERFromView:(UIViewController *)fromView provider:(VIPERProvider *)provider completion:(void (^)(void))completion{
    [fromView presentViewController:[self VIPERViewControllerWithProvider:provider] animated:YES completion:completion];
}

+ (void)pushVIPERFromView:(UIViewController *)fromView provider:(VIPERProvider *)provider completion:(void (^)(void))completion{
    [fromView.navigationController pushViewController:[self VIPERViewControllerWithProvider:provider] animated:YES completion:completion];
}

//TODO:
+ (UIViewController *)VIPERViewControllerWithProvider:(VIPERProvider *)provider{
    return [VIPERBuilder VIPERViewControllerWithProvider:provider];
}

#pragma Private Methods

@end
