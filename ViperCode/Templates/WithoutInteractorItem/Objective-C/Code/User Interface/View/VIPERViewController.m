//
//  ___FILENAME___.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "VIPERViewController.h"
@interface VIPERViewController ()

@end

@implementation VIPERViewController
objection_register_singleton(VIPERViewController)
objection_requires(@"presenter")

#pragma mark - ViewController Lifecycle
- (void) viewDidLoad {
    [super viewDidLoad];
    [self.presenter onViewDidLoad];
}

- (void) viewWillAppear:(BOOL)animated{
    [self.presenter onViewWillAppear];
}

- (void) viewDidAppear:(BOOL)animated{
    [self.presenter onViewDidAppear];
}

- (void)viewWillDisappear:(BOOL)animated{
    [self.presenter onViewWillDisappear];
}

- (void)viewDidDisappear:(BOOL)animated{
    [self.presenter onViewDidDisappear];
}

- (void)viewWillPush:(BOOL)animated {
    [self.presenter onViewWillPush];
}

- (void)viewWillBePushed:(BOOL)animated {
    [self.presenter onViewWillBePushed];
}

- (void)viewWillPop:(BOOL)animated {
    [self.presenter onViewWillPop];
}

#pragma Public Methods
- (void)setupView {
    
}


#pragma Private Methods

@end
