//
//  CurrentUser.h
//  whipcake
//
//  Created by Gennadii on 5/15/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "User.h"


@interface CurrentUser : User

@property (nonatomic, strong) NSString *token;
@property (nonatomic, strong) NSDate *expireDate;


+ (instancetype) sharedInstance;

-(BOOL)isTokenAlive;
-(BOOL)isTokenExpired;

@end
