//
//  ___FILENAME___.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VIPERProtocols.h"
#import "BaseLocalDataManager.h"


@interface VIPERLocalDataManager : BaseLocalDataManager <VIPERLocalDataManagerInputProtocol>

@property (nonatomic, weak) id <VIPERLocalDataManagerOutputProtocol> interactor;


@end
