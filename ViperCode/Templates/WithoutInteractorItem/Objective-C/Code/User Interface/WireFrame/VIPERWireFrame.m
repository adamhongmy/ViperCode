//
//  ___FILENAME___.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VIPERWireFrame.h"

@implementation VIPERWireFrame
objection_register_singleton(VIPERWireFrame)
objection_requires(@"presenter", @"appAdapter")

#pragma Public Methods


- (void) onNotificationReceived:(NSNotification *) notification{
    
}
#pragma Private Methods


@end
