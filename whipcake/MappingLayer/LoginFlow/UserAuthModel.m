//
//  UserAuthModel.m
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "UserAuthModel.h"
#import "NSDateFormatter+Server.h"

@implementation UserAuthModel
    NSString *const kUserToken = @"token";
    NSString *const kExpireDate = @"expiresAt";


+(EKObjectMapping *)objectMapping
{
    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping *mapping) {
        [mapping mapKeyPath:kUserToken toProperty:@"userToken"];
        [mapping mapKeyPath:kExpireDate toProperty:@"expireDate" withDateFormatter:[NSDateFormatter serverFormatter]];
    }];
}

@end
