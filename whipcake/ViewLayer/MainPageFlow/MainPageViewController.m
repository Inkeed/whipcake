//
//  MainPageViewController.m
//  whipcake
//
//  Created by Gennadii on 5/21/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "MainPageViewController.h"
#import "MainPageHeaderView.h"
#import "MainPageHeaderViewModel.h"
#import "APIMainPage.h"

@interface MainPageViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *sectionsArray;
    NSMutableArray *rowsInSectionArray;
}




@end

@implementation MainPageViewController

static  NSString* const kMainPageToAddTask = @"MainPageToAddTaskSegue";



- (void)viewDidLoad {
    [super viewDidLoad];
    sectionsArray = [[NSMutableArray alloc]init];
    rowsInSectionArray = [[NSMutableArray alloc]init];
    
    // Do any additional setup after loading the view.
}



#pragma mark - UITableView DataSource Methods
- (IBAction)didClickTaskButton:(id)sender {
    [self performSegueWithIdentifier:kMainPageToAddTask sender:nil];
}
- (IBAction)didClickDeleteTaskButton:(id)sender {
    [[APIMainPage sharedMainPage] deleteTaskById:32 success:^{ //TODO: Fix input params!
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
}

- (IBAction)didClickUpdateProjectButton:(id)sender {
    //TODO: Fix input params after tests!
    [[APIMainPage sharedMainPage] updateProjectById:@"updated Test project" description:@"updated decription for test project" isArchived:[self isArchvied] color:@"5a4218" projectId:6 success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
}


- (IBAction)didClickDeleteProjectButton:(id)sender {
    [[APIMainPage sharedMainPage] deleteProjectById:7 success:^{ //TODO: Fix input params!
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
}

- (IBAction)didClickLatestTasksButton:(id)sender {
    [[APIMainPage sharedMainPage] getLatestTasks:32 success:^{ //TODO: Fix input params!
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
}


- (IBAction)didClickAddProjectButton:(id)sender { //TODO: Fix input params!
    [[APIMainPage sharedMainPage] createNewProject:@"testproject5" description:@"test project, remove after tests" isArchived:[self isArchvied] color:@"5a4218" success:^{
        // TODO: success
    } failure:^(NSError * _Nonnull error) {
        // TODO: failure
    }];
}

- (BOOL) isArchvied {
    //remove after test!
    return NO;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellId = @"taskCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell.textLabel.text = [rowsInSectionArray objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark  - UITableView DataSource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return sectionsArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return rowsInSectionArray.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [sectionsArray objectAtIndex:section];
}






@end
