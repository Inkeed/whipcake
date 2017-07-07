//
//  MainPageModel.h
//  whipcake
//
//  Created by Gennadii on 5/23/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainPageHeaderViewModel.h"

@protocol MainPageModelDelegate <NSObject>

-(void)shouldReloadSection:(NSInteger)section;
-(void)shouldInsertItemAtIndex:(NSInteger)index section:(NSInteger)section;
@end

@interface MainPageModel : NSObject

@property (nonatomic, weak) id<MainPageModelDelegate> delegate;


-(NSInteger)numberOfSections;
-(NSInteger)numberOfRowsInSection:(NSInteger) section;
-(NSString *)textForHeaderInSection:(NSInteger)section;
-(MainPageHeaderViewModel *)viewModelForSection:(NSInteger)section;


-(void)processClickHeaderInSection:(NSInteger) section;
@end
