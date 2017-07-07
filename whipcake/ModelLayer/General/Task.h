//
//  Task.h
//  whipcake
//
//  Created by Gennadii on 6/28/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyMapping/EasyMapping.h>

@interface Task : NSObject <EKMappingProtocol>

@property (nonatomic, assign) NSInteger taskId;
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* discription;
@property (nonatomic, strong) NSString* deadline;
@property (nonatomic, strong) NSArray* data;
@property (nonatomic, assign) NSInteger importance;
@property (nonatomic, assign) NSInteger complexity;
@property (nonatomic, strong) NSString* createdAt;
@property (nonatomic, strong) NSString* updatedAt;
@property (nonatomic, assign) BOOL isArchived;



@end

