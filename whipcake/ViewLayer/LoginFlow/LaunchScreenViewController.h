//
//  LaunchScreenViewController.h
//  whipcake
//
//  Created by Gennadii on 5/20/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LaunchScreenViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *facebookButton;
@property (weak, nonatomic) IBOutlet UIButton *googleButton;
@property (weak, nonatomic) IBOutlet UIButton *vkButton;
@property (weak, nonatomic) IBOutlet UIView *createAccountContainerView;
@property (weak, nonatomic) IBOutlet UIButton *signInButton;
@property (weak, nonatomic) IBOutlet UIButton *termsOfUseButton;
@property (weak, nonatomic) IBOutlet UIButton *securityPolicyButton;

@end
