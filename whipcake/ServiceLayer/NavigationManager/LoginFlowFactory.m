//
//  LoginFlowFactory.m
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "LoginFlowFactory.h"

@implementation LoginFlowFactory

NSString *const kSignIn = @"SignInViewController";
NSString *const kCreateAccount = @"SignInViewController";

+(instancetype)instance {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

-(UIViewController *)initial {
    return [[self loginStoryboard] instantiateInitialViewController];
}

-(UIViewController *)signIn {
    return [[self loginStoryboard] instantiateViewControllerWithIdentifier:kSignIn];
}

-(UIViewController *)createAccount {
    return [[self loginStoryboard] instantiateViewControllerWithIdentifier:kCreateAccount];
}

-(UIStoryboard *)loginStoryboard {
    return [UIStoryboard storyboardWithName:@"LoginFlow" bundle:nil];
}

@end
