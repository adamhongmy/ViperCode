//
//  ___FILENAME___.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VIPERWireFrame.h"

@implementation VIPERWireFrame

+(UIViewController *)initViewControllerWithModuleComponents{
    // Generating module components
    id <VIPERViewProtocol> view = [[VIPERViewController alloc] init];
    id <VIPERPresenterProtocol, VIPERInteractorOutputProtocol> presenter = [VIPERPresenter new];
    id <VIPERInteractorInputProtocol> interactor = [VIPERInteractor new];
    id <VIPERAPIDataManagerInputProtocol> APIDataManager = [VIPERAPIDataManager new];
    id <VIPERLocalDataManagerInputProtocol> localDataManager = [VIPERLocalDataManager new];
    id <VIPERWireFrameProtocol> wireFrame= [VIPERWireFrame new];
    
    // Connecting
    view.presenter = presenter;
    presenter.view = view;
    presenter.wireFrame = wireFrame;
    presenter.interactor = interactor;
    interactor.presenter = presenter;
    interactor.APIDataManager = APIDataManager;
    interactor.localDataManager = localDataManager;
    
    return (UIViewController *)view;
}

+ (void)presentVIPERModuleFrom:(UIViewController*)fromViewController  completion:(void (^)(void))completion{
    [fromViewController presentViewController:[self initViewControllerWithModuleComponents] animated:YES completion:nil];
}

+(void)pushVIPERModuleFrom:(UIViewController *)fromViewController  completion:(void (^)(void))completion{
    [fromViewController.navigationController pushViewController:[self initViewControllerWithModuleComponents] animated:YES];
}

@end
