//
//  MainPageHeaderViewModel.h
//  whipcake
//
//  Created by Gennadii on 5/23/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainPageHeaderViewConstants.h"

@interface MainPageHeaderViewModel : NSObject

@property (nonatomic, strong) NSString *taskLabelText;
@property (nonatomic, strong) NSString *countLabelText; // may be nil

@property (nonatomic) NSInteger section;
@property (nonatomic) MainPageHeaderViewType headerViewType;

@end
