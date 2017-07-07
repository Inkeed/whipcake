//
//  MainPageHeaderView.h
//  whipcake
//
//  Created by Gennadii on 5/23/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainPageHeaderViewConstants.h"
#import "MainPageHeaderViewModel.h"

@protocol MainPageHeaderViewDelegate <NSObject>

@required

-(void)didClickAddButtonInSection:(NSInteger)section;
-(void)didClickHeaderInSection:(NSInteger)section;

@end

@interface MainPageHeaderView : UIView

@property (weak, nonatomic) id<MainPageHeaderViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@property (nonatomic) NSInteger section;

-(void)setupWithViewModel:(MainPageHeaderViewModel *)viewModel;

@end
