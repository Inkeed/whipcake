//
//  Project.h
//  whipcake
//
//  Created by Gennadii on 7/15/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task.h"
@interface Project : NSObject

@property (nonatomic, strong) NSString * _Nonnull title;
@property (nonatomic, assign) NSInteger projectId;
@property (nonatomic, strong) NSString * _Nonnull projectDescription;
@property (nonatomic, strong) NSString * _Nonnull color;
@property (nonatomic, strong) NSString * _Nonnull createdAt; //datetime
@property (nonatomic, strong) NSString * _Nonnull updatedAt; //datetime
@property (nonatomic, assign) BOOL isArchived;
@property (nonatomic, strong, nonnull) NSArray<Task *> *projectTasks;


@end
