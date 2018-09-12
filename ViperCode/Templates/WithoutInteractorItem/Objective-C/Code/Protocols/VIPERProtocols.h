//
//  ___FILENAME___.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AppProtocols.h"
#import "BaseProtocols.h"

@protocol VIPERInteractorOutputProtocol;
@protocol VIPERInteractorInputProtocol;
@protocol VIPERViewProtocol;
@protocol VIPERPresenterProtocol;
@protocol VIPERLocalDataManagerInputProtocol;
@protocol VIPERLocalDataManagerOutputProtocol;
@protocol VIPERAPIDataManagerInputProtocol;
@protocol VIPERWireFrameInputProtocol;
@protocol VIPERWireFrameOutputProtocol;


@protocol VIPERViewProtocol <BaseViewProtocol>
@required
@property (nonatomic, strong) id <VIPERPresenterProtocol> presenter;
/**
 * Add here your methods for communication PRESENTER -> VIEWCONTROLLER
 */
@end

@protocol VIPERWireFrameInputProtocol <BaseWireFrameInputProtocol>
@required
@property (nonatomic, assign) id<AppAdapterProtocol> appAdapter;
@property (nonatomic, weak) id <VIPERWireFrameOutputProtocol> presenter;
/**
 * Add here your methods for communication PRESENTER -> WIREFRAME
 */

@end

@protocol VIPERWireFrameOutputProtocol <BaseWireFrameOutputProtocol>

/**
 * Add here your methods for communication WIREFRAME -> PRESENTER
 */
@end

@protocol VIPERPresenterProtocol <BasePresenterProtocol>
@required
@property (nonatomic, weak) id <VIPERViewProtocol> view;
@property (nonatomic, strong) id <VIPERInteractorInputProtocol> interactor;
@property (nonatomic, strong) id <VIPERWireFrameInputProtocol> wireFrame;
/**
 * Add here your methods for communication VIEWCONTROLLER -> PRESENTER
 */
@end

@protocol VIPERInteractorOutputProtocol <BaseInteractorOutputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> PRESENTER
 */
@end

@protocol VIPERInteractorInputProtocol <BaseInteractorInputProtocol>
@required
@property (nonatomic, weak) id <VIPERInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <VIPERAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <VIPERLocalDataManagerInputProtocol> localDataManager;
/**
 * Add here your methods for communication PRESENTER -> INTERACTOR
 */
@end


@protocol VIPERAPIDataManagerInputProtocol <BaseAPIDataManagerInputProtocol>

@property (nonatomic, strong) id<AppNetworkingProtocol> networking;

/**
 * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
 */
@end

@protocol VIPERLocalDataManagerOutputProtocol <BaseLocalDataManagerOutputProtocol>
/**
 * Add here your methods for communication LOCALDATAMANAGER -> INTERACTOR
 */
@end

@protocol VIPERLocalDataManagerInputProtocol <BaseLocalDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
 */
@required
@property (nonatomic, weak) id <VIPERLocalDataManagerOutputProtocol> interactor;
@end
