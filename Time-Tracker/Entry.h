//
//  Entry.h
//  Time-Tracker
//
//  Created by Sarah on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

- (id)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)entryDictionary;

@end