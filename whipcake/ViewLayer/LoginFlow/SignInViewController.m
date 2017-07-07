//
//  SignInViewController.m
//  whipcake
//
//  Created by Gennadii on 5/21/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "SignInViewController.h"
#import "NavigationManager.h"
#import "APILogin.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialInterfaceSetup];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
- (IBAction)didClickFacebookButton:(id)sender {
}
- (IBAction)didClickGoogleButton:(id)sender {
}
- (IBAction)didClickVkButton:(id)sender {
}
- (IBAction)didClickLoginButton:(id)sender {
    
    
    [[APILogin shared] authUserWithEmail:self.emailTextField.text password:self.passwordTextField.text success:^{
        [NavigationManager.instance embedMainPageFlow];
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
    
}
- (IBAction)didClickForgotPasswordButton:(id)sender {
}
- (IBAction)didClickEmailTextField:(id)sender {
}
- (IBAction)didClickPasswordTextField:(id)sender {
}

#pragma mark - Private methos

- (void) initialInterfaceSetup {
    self.facebookButton.layer.cornerRadius = 5;
    self.googleButton.layer.cornerRadius = 5;
    self.vkButton.layer.cornerRadius = 5;
}


@end
