//
//  ___FILENAME___.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Objection/Objection.h>
#import "VIPERProtocols.h"
#import "BaseAPIDataManager.h"
#import "AppProtocols.h"

@interface VIPERAPIDataManager : BaseAPIDataManager <VIPERAPIDataManagerInputProtocol>

@property (nonatomic, strong) id<AppNetworkingProtocol> networking;

@end
