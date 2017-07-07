//
//  RequestInfoBuilder+Login.h
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "RequestInfoBuilder.h"
#import "RequestInfo.h"
@interface RequestInfoBuilder (Login)

+(RequestInfo *)authWithEmail:(NSString *)email password:(NSString *)password;
+(RequestInfo *)regWithEmail:(NSString *)email password:(NSString *)password;

@end
