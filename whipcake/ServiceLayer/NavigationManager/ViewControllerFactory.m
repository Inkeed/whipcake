//
//  ViewControllerFactory.m
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "ViewControllerFactory.h"

@implementation ViewControllerFactory

+(MainPageFlowFactory *)mainPageFlow {
    return [MainPageFlowFactory instance];
}
+(LoginFlowFactory *)loginFlow {
    return [LoginFlowFactory instance];
}

@end
