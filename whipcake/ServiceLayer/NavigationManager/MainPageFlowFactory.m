//
//  MainFlowFactory.m
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "MainPageFlowFactory.h"

@implementation MainPageFlowFactory

+(instancetype)instance {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

-(UIViewController *)initial {
    return [[UIStoryboard storyboardWithName:@"MainPageFlow" bundle:nil] instantiateInitialViewController];
}

@end
