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
@implementation APIMainPage

+(instancetype) sharedMainPage {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] init];
    });
    return shared;
}

- (void) createNewTask:(NSString *)title
           description:(NSString *)description
              deadline:(NSString *)deadline
                  data:(NSDictionary *)data
            importance:(NSInteger)importance
            complexity:(NSInteger)complexity
               success:(void (^)(void))successBlock
               failure:(void (^)(NSError * _Nonnull))failureBlock{
    
    [self request:[RequestInfoBuilder createTask:(NSString *)title description:(NSString *)description deadline:(NSString *)deadline data:(NSDictionary *)data importance:(NSInteger)importance complexity:(NSInteger)complexity] success:successBlock failure:failureBlock];
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
