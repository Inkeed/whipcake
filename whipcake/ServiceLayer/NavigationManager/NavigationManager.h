//
//  NavigationManager.h
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NavigationManager : NSObject

+(instancetype)instance;

-(void)embedMainPageFlow;
-(void)embedLoginFlow;

@end
