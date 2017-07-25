//
//  NSString+ServerDate.m
//  whipcake
//
//  Created by Gennadii on 6/26/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "NSString+ServerDate.h"

#import "NSDateFormatter+Server.h"

@implementation NSString (ServerDate)

-(NSDate *)serverFormattedDate {
    NSDateFormatter *dateFormatter = [NSDateFormatter serverFormatter];
    NSDate *date = [dateFormatter dateFromString:self];
    return date;
}

@end
