//
//  MainPageViewController.h
//  whipcake
//
//  Created by Gennadii on 5/21/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainPageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *taskTableView;
@property (assign, nonatomic) NSInteger customNumberOfRowsInSection;
@property (weak, nonatomic) IBOutlet UILabel *taskListSortLabel;
@property (weak, nonatomic) IBOutlet UIButton *taskListSortButton;
@property (weak, nonatomic) IBOutlet UILabel *pointsProgressLabel;
@property (weak, nonatomic) IBOutlet UIButton *executorButton;
@property (weak, nonatomic) IBOutlet UIButton *guarantorButton;
@property (weak, nonatomic) IBOutlet UIButton *addTaskBottomLeftButton;

@end
