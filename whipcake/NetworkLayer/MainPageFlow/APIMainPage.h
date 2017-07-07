//
//  APIMainPage.h
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIMainPage : NSObject

+(instancetype _Nonnull ) sharedMainPage;

- (void) createNewTask: (NSString *_Nonnull)title
           description:(NSString *_Nonnull)description
              deadline:(NSString *_Nonnull)deadline
                  data:(NSDictionary *_Nonnull)data
            importance:(NSInteger)importance
            complexity:(NSInteger)complexity
               success:(void (^_Nonnull)(void))successBlock
               failure:(void (^_Nonnull)(NSError * _Nonnull error))failureBlock;

@end
