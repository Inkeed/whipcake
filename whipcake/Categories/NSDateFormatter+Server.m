//
//  NSDateFormatter+Server.m
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "NSDateFormatter+Server.h"

@implementation NSDateFormatter (Server)

+(NSDateFormatter *)serverFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    return dateFormatter;
}

@end
