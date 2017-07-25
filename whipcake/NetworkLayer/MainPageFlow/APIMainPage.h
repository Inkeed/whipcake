//
//  APIMainPage.h
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIMainPage : NSObject

+(instancetype _Nonnull ) sharedMainPage;


- (void) updateProjectById: (NSString *_Nonnull)title
              description:(NSString *_Nonnull)description
               isArchived:(BOOL)isArchived
                    color:(NSString *_Nonnull)color
                 projectId:(NSInteger )projectId
                  success:(void (^_Nonnull)(void))successBlock
                  failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) createNewTask: (NSString *_Nonnull)title
           description:(NSString *_Nonnull)description
              deadline:(NSString *_Nonnull)deadline
                  data:(NSDictionary *_Nonnull)data
            importance:(NSInteger)importance
            complexity:(NSInteger)complexity
             projectId:(NSInteger)projectId
               success:(void (^_Nonnull)(void))successBlock
               failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) createNewProject: (NSString *_Nonnull)title
           description:(NSString *_Nonnull)description
               isArchived:(BOOL)isArchived
                    color:(NSString *_Nonnull)color
               success:(void (^_Nonnull)(void))successBlock
               failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) getLatestTasks:(NSInteger )taskId
                success:(void (^_Nonnull)(void))successBlock
                failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) getTaskById:(NSInteger )taskId
             success:(void (^_Nonnull)(void))successBlock
             failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) deleteTaskById:(NSInteger )taskId
                success:(void (^_Nonnull)(void))successBlock
                failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) deleteProjectById:(NSInteger )projectId
                   success:(void (^_Nonnull)(void))successBlock
                   failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) getProjectById:(NSInteger )projectId
                success:(void (^_Nonnull)(void))successBlock
                failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) getLatestProjects:(NSInteger )projectId
                   success:(void (^_Nonnull)(void))successBlock
                   failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



- (void) updateTaskById:(NSString *_Nonnull)title
            description:(NSString *_Nonnull)description
               deadline:(NSString *_Nonnull)deadline
                   data:(NSDictionary *_Nonnull)data
             importance:(NSInteger )importance
             complexity:(NSInteger )complexity
              projectId:(NSInteger )projectId
                 taskId:(NSInteger )taskId
                success:(void (^_Nonnull)(void))successBlock
                failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;

@end
