//
//  AddTaskViewController.m
//  whipcake
//
//  Created by Gennadii on 6/28/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "AddTaskViewController.h"
#import "APIMainPage.h"

@interface AddTaskViewController ()

@end

@implementation AddTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (IBAction)didClickAddTaskButton:(id)sender {
        //TODO: params to send for createNewTask method after tests!
    [[APIMainPage sharedMainPage] createNewTask:self.enterTaskNameTextField.text description:self.enterDecriptionTextField.text deadline:[self stringWithDeadLineDate] data:[self dictionaryForDataToSend] importance:2 complexity:2 projectId:6 success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
}

- (IBAction)didClickUpdateTaskButton:(id)sender {
    //TODO: params to send for UpdateTask method after tests!
    [[APIMainPage sharedMainPage] updateTaskById:self.enterTaskNameTextField.text description:self.enterDecriptionTextField.text deadline:[self stringWithDeadLineDate] data:[self dictionaryForDataToSend] importance:2 complexity:2 projectId:6 taskId:31 success:^{
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
