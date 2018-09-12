//
//  ___FILENAME___.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VIPERPresenter.h"

@interface VIPERPresenter()

@end

@implementation VIPERPresenter
objection_register_singleton(VIPERPresenter)
objection_requires(@"view", @"interactor", @"wireFrame")

#pragma Public Methods
- (void)onViewDidLoad {
    [self.view setupView];
}

- (void)onViewWillAppear {
    
}

- (void)onViewDidAppear {
    
}

- (void)onViewWillDisappear {
    
}

- (void)onViewDidDisappear {
    
}

- (void)onViewWillBePushed {
    
}

- (void)onViewWillPush {
    
}

- (void)onViewWillPop {
    
}


#pragma Private Methods

@end
