//
//  APILogin.m
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "APILogin.h"
#import "RequestInfoBuilder+Login.h"
#import "CurrentUser.h"
#import "UserAuthModel.h"
#import <UIKit/UIKit.h>

@implementation APILogin

+(instancetype) shared {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] init];
    });
    return shared;
}

-(void)authUserWithEmail:(NSString *)email password:(NSString *)passord success:(void (^)(void))successBlock failure:(void (^)(NSError * _Nonnull))failureBlock {
    [self request:[RequestInfoBuilder authWithEmail:email password:passord] success:successBlock failure:failureBlock];
}

-(void)registerUserWithEmail:(NSString *)email password:(NSString *)passord success:(void (^)(void))successBlock failure:(void (^)(NSError * _Nonnull))failureBlock {
    [self request:[RequestInfoBuilder regWithEmail:email password:passord] success:successBlock failure:failureBlock];
}


-(void)request:(RequestInfo *)requestInfo success:(void (^)(void))successBlock failure:(void (^)(NSError * _Nonnull))failureBlock {
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:[requestInfo createRequest] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
        if (httpResponse.statusCode == 200 || httpResponse.statusCode == 201) {
            
            UserAuthModel *authModel = [[UserAuthModel alloc] init];
            NSDictionary *jsonOutput = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            [EKMapper fillObject:authModel fromExternalRepresentation:jsonOutput withMapping:[UserAuthModel objectMapping]];
            
            [[CurrentUser sharedInstance] setExpireDate:authModel.expireDate];
            [[CurrentUser sharedInstance] setToken:authModel.userToken];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                successBlock();
            });
        } else {
            NSString *stringWithResopnse = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"Data received: %@", stringWithResopnse);
            [self showMessage:@"Email is already singed up"
                    withTitle:@"Error"];
            dispatch_async(dispatch_get_main_queue(), ^{
                failureBlock(error);
            });
        }
    }] resume];
}

-(void)showMessage:(NSString*)message withTitle:(NSString *)title{
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }]];
        
        [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:alertController animated:YES completion:^{
        }];
    });
}
@end
