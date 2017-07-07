//
//  CreateAccountViewController.m
//  whipcake
//
//  Created by Gennadii on 5/21/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "CreateAccountViewController.h"
#import "APILogin.h"
#import "NavigationManager.h"


@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



#pragma mark - Navigation
- (IBAction)didClickNameTextField:(id)sender {
}
- (IBAction)didClickEmailTextField:(id)sender {
}
- (IBAction)didClickPasswordTextField:(id)sender {
}
- (IBAction)didClickCreatAnAccountButton:(id)sender {
    
    [[APILogin shared] registerUserWithEmail:self.emailTextFIeld.text password:self.passwordTextField.text success:^{
        [NavigationManager.instance embedMainPageFlow];
    } failure:^(NSError * _Nonnull error) {
        //TODO: add error handler;
    }];
}
- (IBAction)didClickTermsOfUseButton:(id)sender {
}
- (IBAction)didClickPrivacyPolicyButton:(id)sender {
}



@end
