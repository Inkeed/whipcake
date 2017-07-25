//
//  RequestInfoBuilder+Project.m
//  whipcake
//
//  Created by Gennadii on 7/16/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "RequestInfoBuilder+Project.h"

@implementation RequestInfoBuilder (Project)

+(RequestInfo *)createProject:(NSString *)title
                  description:(NSString *)description
                   isArchived:(BOOL)isArchived
                        color:(NSString *)color {
    RequestInfo *createProjectRequestInfo = [[RequestInfo alloc] init];
    createProjectRequestInfo.httpMethod = @"POST";
    createProjectRequestInfo.endPointString = @"/projects";
    createProjectRequestInfo.bodyParameters = @{@"title":title,
                                       @"description":description,
                                       @"isArchived":@(isArchived),
                                       @"color":color};
    return createProjectRequestInfo;
}

+(RequestInfo *) deleteProjectById:(NSInteger )projectId{
    RequestInfo *deleteProjectByIdInfo = [[RequestInfo alloc] init];
    deleteProjectByIdInfo.httpMethod = @"DELETE";
    deleteProjectByIdInfo.endPointString = @"/projects/7";//TODO: Put real projectId after tests!!
    return deleteProjectByIdInfo;
}


+(RequestInfo *) getLatestProjects:(NSInteger )projectId{
    RequestInfo *getLastestProjectsInfo = [[RequestInfo alloc] init];
    getLastestProjectsInfo.httpMethod = @"GET";
    getLastestProjectsInfo.endPointString = @"/projects?start_with=7";//TODO: Put real projectId after tests!!
    return getLastestProjectsInfo;
}

+(RequestInfo *) getProjectById:(NSInteger )projectId{
        RequestInfo *getProjectByIdInfo = [[RequestInfo alloc] init];
        getProjectByIdInfo.httpMethod = @"GET";
        getProjectByIdInfo.endPointString = @"/projects/6";//TODO: Put real projectId after tests!!
        return getProjectByIdInfo;
    
}

+(RequestInfo *) updateProjectById:(NSString *)title description:(NSString *)description isArchived:(BOOL)isArchived color:(NSString *)color projectId:(NSInteger)projectId {
    RequestInfo *updateProjectByIdInfo = [[RequestInfo alloc]init];
    updateProjectByIdInfo.httpMethod = @"PUT";
    updateProjectByIdInfo.endPointString = @"/projects/6"; //TODO: Put real projectId after tests!!
    updateProjectByIdInfo.bodyParameters = @{@"title":title,
                                             @"description":description,
                                             @"isArchived":@(isArchived),
                                             @"color":color};
    return updateProjectByIdInfo;
}

@end
