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
#import "APIMainPage.h"


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
        //[self createDefaultProjects];
        //[self createDefaultTasks];
    } failure:^(NSError * _Nonnull error) {
        //TODO: add error handler;
    }];
}
- (IBAction)didClickTermsOfUseButton:(id)sender {
}
- (IBAction)didClickPrivacyPolicyButton:(id)sender {
}


- (void) createDefaultTasks {
    //TODO: params to send for createNewTask method after tests!
    [[APIMainPage sharedMainPage] createNewTask:@"Default task1" description:@"test" deadline:[self stringWithDeadLineDate] data:[self dictionaryForDataToSend] importance:2 complexity:2 projectId:7 success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];

    //TODO: params to send for createNewTask method after tests!
    [[APIMainPage sharedMainPage] createNewTask:@"Default task2" description:@"test" deadline:[self stringWithDeadLineDate] data:[self dictionaryForDataToSend] importance:2 complexity:2 projectId:7 success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];

    //TODO: params to send for createNewTask method after tests!
    [[APIMainPage sharedMainPage] createNewTask:@"Default task3" description:@"test" deadline:[self stringWithDeadLineDate] data:[self dictionaryForDataToSend] importance:2 complexity:2 projectId:7 success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];

}

- (void) createDefaultProjects {
    [[APIMainPage sharedMainPage] createNewProject:@"Work" description:@"test project, remove after tests" isArchived:(BOOL)NO color:@"5a4218" success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
    [[APIMainPage sharedMainPage] createNewProject:@"Travel" description:@"test project, remove after tests" isArchived:(BOOL)NO color:@"5a4218" success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
    [[APIMainPage sharedMainPage] createNewProject:@"Shopping" description:@"test project, remove after tests" isArchived:(BOOL)NO color:@"5a4218" success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
    [[APIMainPage sharedMainPage] createNewProject:@"Sport" description:@"test project, remove after tests" isArchived:(BOOL)NO color:@"5a4218" success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
    [[APIMainPage sharedMainPage] createNewProject:@"Personal" description:@"test project, remove after tests" isArchived:(BOOL)NO color:@"5a4218" success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
    [[APIMainPage sharedMainPage] createNewProject:@"General" description:@"test project, remove after tests" isArchived:(BOOL)NO color:@"5a4218" success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
}

- (NSString*) stringWithDeadLineDate {
    NSDate *now = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    NSString *deadLineDate = [dateFormatter stringFromDate:now];
    return deadLineDate;
}
- (NSDictionary*) dictionaryForDataToSend {
    NSDictionary *dic = [[NSDictionary alloc]init];
    return dic;
}

@end
