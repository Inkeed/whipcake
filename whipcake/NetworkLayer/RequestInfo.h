//
//  RequestInfo.h
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RequestInfo : NSObject

@property (nonatomic, strong) NSString *httpMethod;
@property (nonatomic, strong) NSString *endPointString;
@property (nonatomic, strong) NSDictionary *bodyParameters;

-(NSURLRequest *)createRequest;
@end
