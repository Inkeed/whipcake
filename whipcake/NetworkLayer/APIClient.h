//
//  APIClient.h
//  whipcake
//
//  Created by Gennadii on 5/15/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UserAuthModel;

@interface APIClient : NSObject
//TODO: Singleton

+ (instancetype _Nonnull ) sharedInstance;



//TODO: get user info

- (void) getUserInfo: (NSInteger) userId;

//TODO: update user info

- (void) updateUserInfo: (NSInteger) userId;

@end
