//
//  APIClient.m
//  whipcake
//
//  Created by Gennadii on 5/15/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "APIClient.h"
#import "CurrentUser.h"
//urls for requests
#import "RequestInfo.h"
#import "UserAuthModel.h"
#import <EasyMapping/EasyMapping.h>

static NSString *const authUserEndpointURLString = @"/auth/email";
static NSString *const createUserEndpointURLString = @"/users";
static NSString *const userInfoEndpointURLString =@"/users/";



@implementation APIClient

+ (instancetype) sharedInstance {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] initUniqueInstance];
    });
    return shared;
}

- (instancetype) initUniqueInstance {
    return [super init];
}




- (void) getUserInfo:(NSInteger)userId {
//create string with userId
    NSString* idString = [NSString stringWithFormat:@"%ld", (long)userId];
//creat string for Url with userId
    NSString* urlString = [userInfoEndpointURLString stringByAppendingString:idString];
//init request
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
//setup request
    [request setHTTPMethod:@"GET"];
    [request setURL:[NSURL URLWithString:urlString]];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
//setub session
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:
      ^(NSData * _Nullable data,
        NSURLResponse * _Nullable response,
        NSError * _Nullable error) {
          
          NSString *stringWithResopnse = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
          NSLog(@"Data received: %@", stringWithResopnse);
      }] resume];
    
}



- (void) updateUserInfo: (NSInteger) userId{
//create string with userId
    NSString* idString = [NSString stringWithFormat:@"%ld", (long)userId];
//creat string for Url with userId
    NSString* urlString = [userInfoEndpointURLString stringByAppendingString:idString];
//init request
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    //create dictionary for data to request
    NSDictionary *dictionaryWithUpdateInfo = @{
                                             @"login" : @"testlogin",
                                             @"name" : @"testname"
                                             };
//create data with Json for request
    NSError *error;
    NSData *putData = [NSJSONSerialization dataWithJSONObject:dictionaryWithUpdateInfo options:0 error:&error];
//setup request
    [request setHTTPMethod:@"PUT"];
    [request setURL:[NSURL URLWithString:urlString]];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:putData];
//setub session
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:
      ^(NSData * _Nullable data,
        NSURLResponse * _Nullable response,
        NSError * _Nullable error) {
          
          NSString *stringWithResopnse = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
          NSLog(@"Data received: %@", stringWithResopnse);
          
      }] resume];
}

@end
