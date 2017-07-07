//
//  UserAuthModel.h
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyMapping/EasyMapping.h>

@interface UserAuthModel : NSObject<EKMappingProtocol>

@property (nonatomic, strong, nonnull) NSString *userToken;
@property (nonatomic, strong, nonnull) NSDate *expireDate;

@end
