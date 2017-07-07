//
//  LoginFlowFactory.h
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface LoginFlowFactory : NSObject



+(instancetype)instance;

-(UIViewController *)initial;
-(UIViewController *)signIn;
@end
