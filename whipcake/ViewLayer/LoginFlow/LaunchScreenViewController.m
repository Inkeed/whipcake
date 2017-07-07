//
//  LaunchScreenViewController.m
//  whipcake
//
//  Created by Gennadii on 5/20/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "LaunchScreenViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface LaunchScreenViewController ()

@end

@implementation LaunchScreenViewController
static const NSString* klaunchToSignUp = @"launchToSingUpSegue";
static const NSString* klaunchToSignIn = @"launchToSignInSegue";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initialInterfaceSetup];
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapCreateAccountView)];
    [self.createAccountContainerView addGestureRecognizer:tap];
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

#pragma mark - Interaction


- (void) didTapCreateAccountView {
    [self performSegueWithIdentifier:klaunchToSignUp sender:nil];
}

- (IBAction)didClickFacebookButton:(UIButton *)sender {
}

- (IBAction)didClickGoogleButton:(UIButton *)sender {
}

- (IBAction)didClickVkButton:(UIButton *)sender {
}

- (IBAction)didClickSignInButton:(UIButton *)sender {
     [self performSegueWithIdentifier:klaunchToSignIn sender:nil];
}

- (IBAction)didClickTermsOfUseButton:(UIButton *)sender {
}

- (IBAction)didClickPrivacyPolicyButton:(UIButton *)sender {
}
#pragma mark - Private methos

- (void) initialInterfaceSetup {
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    self.googleButton.layer.cornerRadius = 5;
    self.facebookButton.layer.cornerRadius = 5;
    self.vkButton.layer.cornerRadius = 5;
    self.createAccountContainerView.layer.cornerRadius = 5;
    NSAttributedString* atributed = [[NSAttributedString alloc] initWithString:@"Sign in" attributes:@{NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle),
       NSForegroundColorAttributeName:UIColor.whiteColor                                                                                                                                                            }];

    [self.signInButton setAttributedTitle:atributed forState:normal];
    
    
}

@end
