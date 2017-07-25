//
//  RequestInfoBuilder+Task.m
//  whipcake
//
//  Created by Gennadii on 6/28/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "RequestInfoBuilder+Task.h"

@implementation RequestInfoBuilder (Task)

+(RequestInfo *)createTask:(NSString *)title description:(NSString *)description deadline:(NSString *)deadline data:(NSDictionary *)data importance:(NSInteger)importance complexity:(NSInteger)complexity projectId:(NSInteger)projectId {
    RequestInfo *taskRequestInfo = [[RequestInfo alloc] init];
    taskRequestInfo.httpMethod = @"POST";
    taskRequestInfo.endPointString = @"/tasks";
    taskRequestInfo.bodyParameters = @{@"title":title,
                                       @"description":description,
                                       @"deadline":deadline,
                                       @"data":data,
                                       @"importance":[NSNumber numberWithLong:importance],
                                       @"complexity":[NSNumber numberWithLong:complexity],
                                       @"projectId":[NSNumber numberWithLong:projectId]};
    return taskRequestInfo;
}
+(RequestInfo *) getLatestTasks:(NSInteger )taskId { // latest taskID+1 = get all tasks
    RequestInfo *getLastestTasksInfo = [[RequestInfo alloc] init];
    getLastestTasksInfo.httpMethod = @"GET";
    getLastestTasksInfo.endPointString = @"/tasks?start_with=33";
    
    
    return getLastestTasksInfo;
}
+(RequestInfo *) getTaskById:(NSInteger )taskId {
    RequestInfo *getTaskByIdInfo = [[RequestInfo alloc] init];
    getTaskByIdInfo.httpMethod = @"GET";
    getTaskByIdInfo.endPointString = @"/tasks/31";//TODO: Put real taskId after tests!!
    return getTaskByIdInfo;
}

+(RequestInfo *) deleteTaskById:(NSInteger )taskId{
    RequestInfo *deleteTaskByIdInfo = [[RequestInfo alloc] init];
    deleteTaskByIdInfo.httpMethod = @"DELETE";
    deleteTaskByIdInfo.endPointString = @"/tasks/2";//TODO: Put real taskId after tests!!
    return deleteTaskByIdInfo;
}

+(RequestInfo *) updateTaskById:(NSString *)title description:(NSString *)description deadline:(NSString *)deadline data:(NSDictionary *)data importance:(NSInteger)importance complexity:(NSInteger)complexity projectId:(NSInteger)projectId taskId:(NSInteger)taskId{
    RequestInfo *updateTaskByIdInfo = [[RequestInfo alloc]init];
    updateTaskByIdInfo.httpMethod = @"PUT";
    updateTaskByIdInfo.endPointString = @"/tasks/31";//TODO: Put real taskId after tests!
    updateTaskByIdInfo.bodyParameters = @{@"title":title,
                                          @"description":description,
                                          @"deadline":deadline,
                                          @"data":data,
                                          @"importance":[NSNumber numberWithLong:importance],
                                          @"complexity":[NSNumber numberWithLong:complexity],
                                          @"projectId":[NSNumber numberWithLong:projectId]};
    return updateTaskByIdInfo;
}

@end
