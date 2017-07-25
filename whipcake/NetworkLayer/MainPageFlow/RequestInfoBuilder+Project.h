//
//  RequestInfoBuilder+Project.h
//  whipcake
//
//  Created by Gennadii on 7/16/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "RequestInfoBuilder.h"
#import "RequestInfo.h"

@interface RequestInfoBuilder (Project)

+(RequestInfo *)createProject:(NSString *)title
                  description:(NSString *)description
                   isArchived:(BOOL)isArchived
                        color:(NSString *)color ;

+(RequestInfo *) deleteProjectById:(NSInteger )projectId;

+(RequestInfo *) getLatestProjects:(NSInteger )projectId;

+(RequestInfo *) getProjectById:(NSInteger )projectId;

+(RequestInfo *) updateProjectById:(NSString *)title
                       description:(NSString *)description
                        isArchived:(BOOL)isArchived
                             color:(NSString *)color
                         projectId:(NSInteger )projectId;



@end
