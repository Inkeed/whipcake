//
//  CreateAccountViewController.h
//  whipcake
//
//  Created by Gennadii on 5/21/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateAccountViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextFiled;
@property (weak, nonatomic) IBOutlet UITextField *emailTextFIeld;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *createAccountButton;
@property (weak, nonatomic) IBOutlet UIButton *termsOfUseButton;
@property (weak, nonatomic) IBOutlet UIButton *privacyPolicyButton;

@end
