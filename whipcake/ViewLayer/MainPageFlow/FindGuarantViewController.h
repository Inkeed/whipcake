//
//  FindGuarantViewController.h
//  whipcake
//
//  Created by Gennadii on 6/7/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindGuarantViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *guarantorSearchButton;
@property (weak, nonatomic) IBOutlet UITableView *guarantorSearchTableView;
@property (weak, nonatomic) IBOutlet UILabel *guarantorSearchLabel;
@property (weak, nonatomic) IBOutlet UIButton *addGuarantorButton;

@end
