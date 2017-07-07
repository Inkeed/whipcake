//
//  APILogin.h
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APILogin : NSObject

+(instancetype _Nonnull ) shared;

-(void) authUserWithEmail:(NSString * _Nonnull)email
                 password:(NSString *_Nonnull)passord
                  success:(void (^_Nonnull)(void))successBlock
                  failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;

-(void) registerUserWithEmail:(NSString * _Nonnull)email
                     password:(NSString *_Nonnull)passord
                      success:(void (^_Nonnull)(void))successBlock
                      failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;



@end
