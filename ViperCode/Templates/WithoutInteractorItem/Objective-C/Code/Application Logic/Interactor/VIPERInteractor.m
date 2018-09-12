//
//  ___FILENAME___.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VIPERInteractor.h"

@interface VIPERInteractor()

@end

@implementation VIPERInteractor
objection_register_singleton(VIPERInteractor)
objection_requires(@"presenter", @"APIDataManager", @"localDataManager")

#pragma Public Methods


#pragma Private Methods

@end
