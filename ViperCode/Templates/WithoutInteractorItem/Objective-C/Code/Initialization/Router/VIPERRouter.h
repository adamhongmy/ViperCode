//
//  ___FILENAME___.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "BaseRouter.h"
#import "VIPERBuilder.h"
#import "VIPERProvider.h"

@interface VIPERRouter : BaseRouter

+ (void)presentVIPERFromView:(UIViewController *)fromView provider:(VIPERProvider *)provider;
+ (void)pushVIPERFromView:(UIViewController *)fromView provider:(VIPERProvider *)provider;


+ (void)presentVIPERFromView:(UIViewController *)fromView provider:(VIPERProvider *)provider completion:(void (^) (void))completion;
+ (void)pushVIPERFromView:(UIViewController *)fromView provider:(VIPERProvider *)provider completion:(void (^)(void))completion;

+ (UIViewController *)VIPERViewControllerWithProvider:(VIPERProvider *)provider;

@end
