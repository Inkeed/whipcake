//
//  RequestInfoBuilder+Login.m
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "RequestInfoBuilder+Login.h"

@implementation RequestInfoBuilder (Login)

+(RequestInfo *)authWithEmail:(NSString *)email password:(NSString *)password {
    RequestInfo *auth = [[RequestInfo alloc] init];
    auth.httpMethod = @"POST";
    auth.endPointString = @"/auth/email";
    auth.bodyParameters = @{@"email":email, @"password":password};
    return auth;
}


+(RequestInfo *)regWithEmail:(NSString *)email password:(NSString *)password {
    RequestInfo *reg = [[RequestInfo alloc] init];
    reg.httpMethod = @"POST";
    reg.endPointString = @"/users";
    reg.bodyParameters = @{@"email":email, @"password":password};
    return reg;
}

@end
