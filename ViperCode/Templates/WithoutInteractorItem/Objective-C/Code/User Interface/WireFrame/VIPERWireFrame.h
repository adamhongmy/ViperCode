//
//  ___FILENAME___.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
#import "VIPERProtocols.h"
#import "BaseWireFrame.h"

@interface VIPERWireFrame : BaseWireFrame <VIPERWireFrameInputProtocol>

@property (nonatomic, assign) id<AppAdapterProtocol> appAdapter;
@property (nonatomic, weak) id <VIPERWireFrameOutputProtocol> presenter;

@end
