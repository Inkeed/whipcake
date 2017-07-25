//
//  RequestInfo.m
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "RequestInfo.h"
#import "CurrentUser.h"

@implementation RequestInfo

-(NSString *)baseURLString {
    return @"https://stageapi.rinew.ru";
}

-(NSString *)appKey {
    return @"xmUADptMX2zDqA4";
}



-(NSURLRequest *)createRequest {
    NSString *urlString = [self.baseURLString stringByAppendingString:self.endPointString];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:url];
    request.allHTTPHeaderFields = self.httpHeader;
    [request setHTTPMethod:self.httpMethod];
    if (self.bodyParameters ) {
    [request setHTTPBody:self.httpBody];
    }
    return request;
}

-(NSData *)httpBody {
    NSError *error;
    NSData *postData = [NSJSONSerialization dataWithJSONObject:self.bodyParameters options:0 error:&error];
    return postData;
}

-(NSDictionary *)httpHeader {
    NSMutableDictionary *header = [NSMutableDictionary dictionary];
    [header setValue:self.appKey forKey:@"App-key"];
    [header setValue:@"application/json" forKey:@"Content-Type"];
    if ([[CurrentUser sharedInstance] isTokenAlive]) {
        [header setValue:[CurrentUser sharedInstance].token forKey:@"Access-token"];
    }
    return header;
}

@end
