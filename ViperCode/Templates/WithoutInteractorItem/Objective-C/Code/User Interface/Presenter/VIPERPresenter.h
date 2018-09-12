//
//  ___FILENAME___.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VIPERProtocols.h"
#import "BasePresenter.h"


@interface VIPERPresenter : BasePresenter <VIPERPresenterProtocol, VIPERInteractorOutputProtocol, VIPERWireFrameOutputProtocol>

@property (nonatomic, weak) id <VIPERViewProtocol> view;
@property (nonatomic, strong) id <VIPERInteractorInputProtocol> interactor;
@property (nonatomic, strong) id <VIPERWireFrameInputProtocol> wireFrame;

@end
