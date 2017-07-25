//
//  RequestInfoBuilder+Task.h
//  whipcake
//
//  Created by Gennadii on 6/28/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "RequestInfoBuilder.h"
#import "RequestInfo.h"
@interface RequestInfoBuilder (Task)

+(RequestInfo *)createTask:(NSString *)title
               description:(NSString *)description
                  deadline:(NSString *)deadline
                      data:(NSDictionary *)data
                importance:(NSInteger)importance
                complexity:(NSInteger)complexity
                 projectId:(NSInteger)projectId;

+(RequestInfo *) getLatestTasks:(NSInteger )taskId;

+(RequestInfo *) getTaskById:(NSInteger )taskId;

+(RequestInfo *) deleteTaskById:(NSInteger )taskId;

+(RequestInfo *)updateTaskById:(NSString *)title
               description:(NSString *)description
                  deadline:(NSString *)deadline
                      data:(NSDictionary *)data
                importance:(NSInteger)importance
                complexity:(NSInteger)complexity
                 projectId:(NSInteger)projectId
                    taskId:(NSInteger )taskId;

@end
