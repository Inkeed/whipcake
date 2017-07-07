//
//  AddTaskViewController.h
//  whipcake
//
//  Created by Gennadii on 6/28/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddTaskViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *enterTaskNameTextField;
@property (weak, nonatomic) IBOutlet UIButton *addTaskButton;
@property (weak, nonatomic) IBOutlet UITextField *enterDecriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *enterDeadlineTextField;
@property (weak, nonatomic) IBOutlet UITextField *enterDataTextField;
@property (weak, nonatomic) IBOutlet UITextField *enterImportanceTextField;
@property (weak, nonatomic) IBOutlet UITextField *enterComplexityTextField;

- (NSString*) stringWithDeadLineDate;

@end
