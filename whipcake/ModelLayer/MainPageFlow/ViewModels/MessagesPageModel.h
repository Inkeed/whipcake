//
//  MessagesPageModel.h
//  whipcake
//
//  Created by Gennadii on 6/13/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessagesPageModel : NSObject

-(NSInteger)numberOfSections;
-(NSInteger)numberOfRowsInSection:(NSInteger) section;
-(NSString *)textForHeaderInSection:(NSInteger)section;

@end
