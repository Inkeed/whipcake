//
//  Project.h
//  whipcake
//
//  Created by Gennadii on 7/15/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) NSInteger projectId;
@property (nonatomic, strong) NSString *projectDescription;
@property (nonatomic, strong) NSString *color;
@property (nonatomic, strong) NSString *createdAt; //datetime
@property (nonatomic, strong) NSString *updatedAt; //datetime
@property (nonatomic, assign) BOOL isArchived;


@end
