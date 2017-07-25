//
//  User.h
//  whipcake
//
//  Created by Gennadii on 5/15/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyMapping/EasyMapping.h>
#import "Project.h"
@interface User : NSObject

@property (nonatomic, assign) NSInteger userId;
@property (nonatomic, strong) NSString* login;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* avatar;
@property (nonatomic, strong) NSString* aboutMyself;
@property (nonatomic, strong) NSString* dateOfBirth;
@property (nonatomic, assign) BOOL sex;
@property (nonatomic, strong) NSString* createdAt;
@property (nonatomic, strong) NSString* updatedAt;
@property (nonatomic, assign) NSInteger cityId;
@property (nonatomic, strong) NSDictionary* statuses; //TODO 
@property (nonatomic, assign) NSInteger userRankId;
@property (nonatomic, strong) NSString* premiumUntil;
@property (nonatomic, assign) BOOL isBanned;
@property (nonatomic, strong, nonnull) NSArray<Project *> *userProjects;


@end
