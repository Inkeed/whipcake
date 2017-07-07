//
//  FindExecutorTableViewCell.h
//  whipcake
//
//  Created by Gennadii on 6/13/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindExecutorTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *executorProfileIconButton;
@property (weak, nonatomic) IBOutlet UIButton *executorNameButton;
@property (weak, nonatomic) IBOutlet UILabel *executorAgeLabel;
@property (weak, nonatomic) IBOutlet UILabel *executorCountryLabel;
@property (weak, nonatomic) IBOutlet UILabel *executorTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *executorPointsLabel;
@property (weak, nonatomic) IBOutlet UILabel *executorNumberOfTasksLabel;

@end
