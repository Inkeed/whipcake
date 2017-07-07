//
//  CurrentUser.m
//  whipcake
//
//  Created by Gennadii on 5/15/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "CurrentUser.h"


@implementation CurrentUser

static NSString *const kToken = @"token";
static NSString *const kExpireDate = @"tokenExpireDate";



-(void)setToken:(NSString *)token {
    
    [[NSUserDefaults standardUserDefaults] setObject:token forKey:kToken];
}

-(NSString *)token {
    return [[NSUserDefaults standardUserDefaults] objectForKey:kToken];
}

-(void)setExpireDate:(NSDate *)expireDate {
    [[NSUserDefaults standardUserDefaults] setObject:expireDate forKey:kExpireDate];
}

-(NSDate *)expireDate {
     return [[NSUserDefaults standardUserDefaults] objectForKey:kExpireDate];
}



+ (instancetype) sharedInstance {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[super alloc] initUniqueInstance];
    });
    return shared;
}

-(BOOL)isTokenAlive {
    NSString *token = self.token;
    if (!token) {
        return NO;
    }
    
    
    NSDate *tokenDate = self.expireDate;
    
    if (!tokenDate) {
        NSLog(@"NO TOKEN DATE");
        return NO;
    }
    NSDate *now = [NSDate date];
    if ([tokenDate compare:now] == NSOrderedAscending) {
        return NO;
    } else {
        return YES;
    }
}

-(BOOL)isTokenExpired {
    return ![self isTokenAlive];
}



- (instancetype) initUniqueInstance {
    return [super init];
}


@end
