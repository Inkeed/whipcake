//
//  RequestInfoBuilder+Task.m
//  whipcake
//
//  Created by Gennadii on 6/28/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "RequestInfoBuilder+Task.h"

@implementation RequestInfoBuilder (Task)

+(RequestInfo *)createTask:(NSString *)title description:(NSString *)description deadline:(NSString *)deadline data:(NSDictionary *)data importance:(NSInteger)importance complexity:(NSInteger)complexity {
    RequestInfo *taskRequestInfo = [[RequestInfo alloc] init];
    taskRequestInfo.httpMethod = @"POST";
    taskRequestInfo.endPointString = @"/tasks";
    taskRequestInfo.bodyParameters = @{@"title":title,
                                       @"description":description,
                                       @"deadline":deadline,
                                       @"data":data,
                                       @"importance":[NSNumber numberWithLong:importance],
                                       @"complexity":[NSNumber numberWithLong:complexity]};
    return taskRequestInfo;
}

@end
