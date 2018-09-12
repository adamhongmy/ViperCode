//
//  ___FILENAME___.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VIPERProtocols.h"
#import "VIPERViewController.h"
#import "VIPERLocalDataManager.h"
#import "VIPERAPIDataManager.h"
#import "VIPERInteractor.h"
#import "VIPERPresenter.h"
#import "VIPERWireFrame.h"
#import "VIPERProvider.h"
#import "AppProtocols.h"
#import "SessionManager.h"
#import "AppAdapter.h"
#import "BaseBuilder.h"


@interface VIPERBuilder : BaseBuilder

- (instancetype)initWithProvider:(VIPERProvider *)provider;

+ (UIViewController *)VIPERViewControllerWithProvider:(VIPERProvider *)provider;

+ (JSObjectionInjector *)VIPERInjectorWithProvider:(VIPERProvider *)provider;


@end

