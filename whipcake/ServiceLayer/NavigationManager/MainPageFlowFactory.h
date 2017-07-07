//
//  MainFlowFactory.h
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MainPageFlowFactory : NSObject

+(instancetype)instance;

-(UIViewController *)initial;

@end
