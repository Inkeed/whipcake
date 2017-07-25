//
//  Task.m
//  whipcake
//
//  Created by Gennadii on 6/28/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "Task.h"

@implementation Task

    NSString *const kId = @"id";
    NSString *const kTaskTitle = @"title";
    NSString *const KDescription = @"description";
    NSString *const kDeadline = @"deadline";
    NSString *const kData = @"data";
    NSString *const kImportance = @"importance";
    NSString *const kComplexity = @"complexity";
    NSString *const kCreatedAt = @"createdAt";
    NSString *const kUpdatedAt = @"updatedAt";
    NSString *const kIsArchived = @"isArchived";
    NSString *const kProjectId = @"projectId";


+(EKObjectMapping *)objectMapping
{
    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping *mapping) {
        [mapping mapKeyPath:kTaskTitle toProperty:@"title"];
        [mapping mapKeyPath:KDescription toProperty:@"discription"];
        [mapping mapKeyPath:kDeadline toProperty:@"deadline"];
        [mapping mapKeyPath:kData toProperty:@"data"];
        [mapping mapKeyPath:kImportance toProperty:@"importance"];
        [mapping mapKeyPath:kComplexity toProperty:@"complexity"];
        [mapping mapKeyPath:kId toProperty:@"taskId"];
        [mapping mapKeyPath:kCreatedAt toProperty:@"createdAt"];
        [mapping mapKeyPath:kUpdatedAt toProperty:@"updatedAt"];
        [mapping mapKeyPath:kIsArchived toProperty:@"isArchived"];
        [mapping mapKeyPath:kProjectId toProperty:@"projectId"];
    }];
}



@end


////{
//{
//    "id": 0,
//    "title": "string",
//    "description": "string",
//    "deadline": "string",
//    "data": {},
//    "importance": 0,
//    "complexity": 0,
//    "createdAt": "string",
//    "updatedAt": "string",
//    "isArchived": true
//}
////}
