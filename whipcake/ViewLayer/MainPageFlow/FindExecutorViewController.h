//
//  FindExecutorViewController.h
//  whipcake
//
//  Created by Gennadii on 6/7/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindExecutorViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *exucutorSearchLabel;
@property (weak, nonatomic) IBOutlet UIButton *executorSearchButton;
@property (weak, nonatomic) IBOutlet UIButton *executorAddButton;
@property (weak, nonatomic) IBOutlet UITableView *executorSearchTableView;

@end
