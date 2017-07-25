//
//  APIMainPage.m
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "APIMainPage.h"
#import "CurrentUser.h"
#import "RequestInfoBuilder+Task.h"
#import "RequestInfoBuilder+Project.h"
@implementation APIMainPage

+(instancetype) sharedMainPage {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] init];
    });
    return shared;
}

#pragma mark - Project Methods

- (void) updateProjectById:(NSString *)title description:(NSString *)description isArchived:(BOOL)isArchived color:(NSString *)color projectId:(NSInteger)projectId success:(void (^)(void))successBlock failure:(void (^)(NSError * _Nonnull))failureBlock{
    [self request:[RequestInfoBuilder updateProjectById:(NSString *)title description:(NSString *)description isArchived:(BOOL)isArchived color:(NSString *)color projectId:(NSInteger)projectId]success:successBlock failure:failureBlock];
}

- (void) getProjectById:(NSInteger )projectId
                success:(void (^)(void))successBlock
                failure:(void (^)(NSError * _Nonnull))failureBlock{
    [self request:[RequestInfoBuilder getProjectById:(NSInteger)projectId]success:successBlock failure:failureBlock];
}


- (void) getLatestProjects:(NSInteger )projectId
                   success:(void (^)(void))successBlock
                   failure:(void (^)(NSError * _Nonnull))failureBlock{
    [self request:[RequestInfoBuilder getLatestProjects:(NSInteger)projectId]success:successBlock failure:failureBlock];
}


- (void) deleteProjectById:(NSInteger )projectId
                   success:(void (^)(void))successBlock
                   failure:(void (^)(NSError * _Nonnull))failureBlock{
    [self request:[RequestInfoBuilder deleteProjectById:(NSInteger)projectId]success:successBlock failure:failureBlock];
}


-(void) createNewProject:(NSString *)title
             description:(NSString *)description
              isArchived:(BOOL)isArchived
                   color:(NSString *)color
                 success:(void (^)(void))successBlock
                 failure:(void (^)(NSError * _Nonnull))failureBlock{
    [self request:[RequestInfoBuilder createProject:(NSString *)title description:(NSString *)description isArchived:(BOOL)isArchived color:(NSString *)color] success:successBlock failure:failureBlock];
}

#pragma mark - Task Methods


- (void) updateTaskById:(NSString *)title
            description:(NSString *)description
               deadline:(NSString *)deadline
                   data:(NSDictionary *)data
             importance:(NSInteger )importance
             complexity:(NSInteger )complexity
              projectId:(NSInteger )projectId
                 taskId:(NSInteger )taskId
                success:(void (^)(void))successBlock
                failure:(void (^)(NSError * _Nonnull))failureBlock{
    [self request:[RequestInfoBuilder updateTaskById:(NSString *)title description:(NSString *)description deadline:(NSString *)deadline data:(NSDictionary *)data importance:(NSInteger)importance complexity:(NSInteger)complexity projectId:(NSInteger)projectId taskId:(NSInteger)taskId]success:successBlock failure:failureBlock];
}




- (void) deleteTaskById:(NSInteger )taskId
                success:(void (^)(void))successBlock
                failure:(void (^)(NSError * _Nonnull))failureBlock{
    [self request:[RequestInfoBuilder deleteTaskById:(NSInteger)taskId]success:successBlock failure:failureBlock];
}



- (void) getTaskById:(NSInteger )taskId
             success:(void (^)(void))successBlock
             failure:(void (^)(NSError * _Nonnull))failureBlock{
    [self request:[RequestInfoBuilder getTaskById:(NSInteger ) taskId] success:successBlock failure:failureBlock];
}


- (void) createNewTask:(NSString *)title
           description:(NSString *)description
              deadline:(NSString *)deadline
                  data:(NSDictionary *)data
            importance:(NSInteger)importance
            complexity:(NSInteger)complexity
             projectId:(NSInteger)projectId
               success:(void (^)(void))successBlock
               failure:(void (^)(NSError * _Nonnull))failureBlock{
    
    [self request:[RequestInfoBuilder createTask:(NSString *)title description:(NSString *)description deadline:(NSString *)deadline data:(NSDictionary *)data importance:(NSInteger)importance complexity:(NSInteger)complexity projectId:(NSInteger)projectId] success:successBlock failure:failureBlock];
}



- (void) getLatestTasks:(NSInteger )taskId
                success:(void (^)(void))successBlock
                failure:(void (^)(NSError * _Nonnull))failureBlock {
    [self request:[RequestInfoBuilder getLatestTasks:taskId] success:successBlock failure:failureBlock];
}







-(void)request:(RequestInfo *)requestInfo success:(void (^)(void))successBlock failure:(void (^)(NSError * _Nonnull))failureBlock {
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:[requestInfo createRequest] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
        if (httpResponse.statusCode == 200 || httpResponse.statusCode == 201) {
            NSString *stringWithResopnse = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"Data received: %@", stringWithResopnse);
            dispatch_async(dispatch_get_main_queue(), ^{
                successBlock();
            });
        } else {
            NSString *stringWithResopnse = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"Data received: %@", stringWithResopnse);
            dispatch_async(dispatch_get_main_queue(), ^{
                failureBlock(error);
            });
        }
    }] resume];
}

@end
