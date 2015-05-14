//
//  TTDetailTableViewDatasource.h
//  Time-Tracker
//
//  Created by Sarah on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Project;

@interface TTDetailDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) Project *project;

@end