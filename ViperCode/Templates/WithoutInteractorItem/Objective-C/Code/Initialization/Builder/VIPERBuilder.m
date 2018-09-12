//
//  ___FILENAME___.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
#import "VIPERBuilder.h"
@interface VIPERBuilder()

@property (nonatomic, strong) VIPERProvider *provider;

@end

@implementation VIPERBuilder

#pragma Public Methods

- (instancetype)initWithProvider:(VIPERProvider *)provider {
    if(self = [self init]){
        self.provider = provider;
    }
    return self;
}

+ (UIViewController *)VIPERViewControllerWithProvider:(VIPERProvider *)provider{
    JSObjectionInjector *injector =  [[self class] VIPERInjectorWithProvider:provider];
    return injector[[VIPERViewController class]];
}

+ (JSObjectionInjector *)VIPERInjectorWithProvider:(VIPERProvider *)provider{
    JSObjectionInjector *injector =  [JSObjection createInjector:[[VIPERBuilder alloc]initWithProvider:provider]];;
    return injector;
}

#pragma Private Methods
/*
 Bind classes
 */
-(void)configure{
    //Wireframe
    [self bindClass:[VIPERWireFrame class] toProtocol:@protocol(VIPERWireFrameInputProtocol)];
    [self bindMetaClass:[AppAdapter class] toProtocol:@protocol(AppAdapterProtocol)];
    
    //View
    [self bindClass:[VIPERViewController class] toProtocol:@protocol(VIPERViewProtocol)];
    
    //Presenter
    [self bindClass:[VIPERPresenter class] toProtocol:@protocol(VIPERPresenterProtocol)];
    [self bindClass:[VIPERPresenter class] toProtocol:@protocol(VIPERInteractorOutputProtocol)];
     [self bindClass:[VIPERPresenter class] toProtocol:@protocol(VIPERWireFrameOutputProtocol)];
    
    //Interactor
    [self bindClass:[VIPERInteractor class] toProtocol:@protocol(VIPERInteractorInputProtocol)];
    [self bindClass:[VIPERInteractor class] toProtocol:@protocol(VIPERLocalDataManagerOutputProtocol)];
    
    //APIDatamanager
    [self bindClass:[VIPERAPIDataManager class] toProtocol:@protocol(VIPERAPIDataManagerInputProtocol)];
    [self bind:[SessionManager sharedManager] toProtocol:@protocol(AppNetworkingProtocol)];

    //LocalDataManager
    [self bindClass:[VIPERLocalDataManager class] toProtocol:@protocol(VIPERLocalDataManagerInputProtocol)];
}

@end
