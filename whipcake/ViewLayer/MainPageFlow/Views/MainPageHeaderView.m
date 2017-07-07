//
//  MainPageHeaderView.m
//  whipcake
//
//  Created by Gennadii on 5/23/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "MainPageHeaderView.h"

@interface MainPageHeaderView()


@end

@implementation MainPageHeaderView





-(void)setupWithViewModel:(MainPageHeaderViewModel *)viewModel{
//    self.taskLabel.text = viewModel.taskLabelText;
//    
//    switch (viewModel.headerViewType) {
//        case MainPageHeaderViewType_WithLabel:
//            self.addButton.hidden = YES;
//            self.countLabel.text = viewModel.taskLabelText;
//            break;
//        case MainPageHeaderViewType_WithButton:
//            self.countLabel.hidden = YES;
//            break;
//        default:
//            // never happen
//            break;
//    }
}


- (IBAction)didClickAddButton:(UIButton *)sender {
    [self.delegate didClickAddButtonInSection:self.section];
}
- (IBAction)didClickHeaderButton:(UIButton *)sender {
    [self.delegate didClickHeaderInSection:self.section];
}

@end
