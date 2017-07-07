//
//  User.m
//  whipcake
//
//  Created by Gennadii on 5/15/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "User.h"

@implementation User


//+(EKObjectMapping *)objectMapping
//{
//    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping * _Nonnull mapping) {
//        [mapping mapPropertiesFromArray:@[@"name", @"email"]];
//    }]
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping *mapping) {
//        NSDictionary *genders = @{ @"male": @(GenderMale), @"female": @(GenderFemale) };
//        [mapping mapPropertiesFromArray:@[@"name", @"email"]];
//        [mapping mapKeyPath:@"gender" toProperty:@"gender" withValueBlock:^(NSString *key, id value) {
//            return genders[value];
//        } reverseBlock:^id(id value) {
//            return [genders allKeysForObject:value].lastObject;
//        }];
//        [mapping mapKeyPath:@"socialURL" toProperty:@"socialURL"
//             withValueBlock:[EKMappingBlocks urlMappingBlock]
//               reverseBlock:[EKMappingBlocks urlReverseMappingBlock]];
//        [mapping hasOne:[Car class] forKeyPath:@"car"];
//        [mapping hasMany:[Phone class] forKeyPath:@"phones"];
//    }];
//}


@end
