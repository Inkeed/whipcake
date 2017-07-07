//
//  ViewControllerFactory.h
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainPageFlowFactory.h"
#import "LoginFlowFactory.h"

@interface ViewControllerFactory : NSObject

+(MainPageFlowFactory *)mainPageFlow;
+(LoginFlowFactory *)loginFlow;

@end
