//
//  MainPageViewController.m
//  whipcake
//
//  Created by Gennadii on 5/21/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "MainPageViewController.h"
#import "MainPageModel.h"
#import "MainPageHeaderView.h"
#import "MainPageHeaderViewModel.h"

@interface MainPageViewController () <UITableViewDataSource, UITableViewDelegate, MainPageHeaderViewDelegate, MainPageModelDelegate>

@property (nonatomic, strong) MainPageModel *model;

@end

@implementation MainPageViewController

static const NSString* kMainPageToAddTask = @"MainPageToAddTaskSegue";

-(MainPageModel *)model {
    if (!_model) {
        _model = [[MainPageModel alloc] init];
    }
    return _model;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model.delegate = self;
    
    // Do any additional setup after loading the view.
}



#pragma mark - UITableView DataSource Methods

- (IBAction)didClickAddNewTaskButton:(id)sender {
    [self performSegueWithIdentifier:kMainPageToAddTask sender:nil];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [self.model numberOfSections];
}   

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.model numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"taskCell"];
    switch (indexPath.section) {
        case 0:
            cell.backgroundColor = [UIColor magentaColor];
            break;
        case 1:
            cell.backgroundColor = [UIColor purpleColor];
            break;
        case 2:
            cell.backgroundColor = [UIColor yellowColor];
            break;
    }
    
    if (indexPath.row == 3)  {
        cell.backgroundColor = [UIColor brownColor];
    }
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {

    MainPageHeaderView *headerView = [[[NSBundle mainBundle] loadNibNamed:@"MainPageHeaderView" owner:self options:nil] objectAtIndex:0];
    headerView.frame = CGRectMake(0, 0, tableView.frame.size.width, 18);
    
    headerView.delegate = self;
    
    headerView.taskLabel.frame = CGRectMake(0, 0, tableView.frame.size.width / 2, 18);
    
    NSString *headerText = [self.model textForHeaderInSection:section];
    headerView.taskLabel.text = headerText;
    
    headerView.section = section;
    
    
    
    
    MainPageHeaderViewModel *viewModel = [self.model viewModelForSection:section];
    [headerView setupWithViewModel:viewModel];
    
#warning: remove after test!
    if (section == 0) {
        [headerView setBackgroundColor:[UIColor cyanColor]];
    }
    if (section == 1) {
        [headerView setBackgroundColor:[UIColor redColor]];
    }
    if (section == 2) {
        [headerView setBackgroundColor:[UIColor greenColor]];
    }
    
    
    
    
    
    return headerView;
}

#pragma mark - MainPageHeaderViewDelegate

-(void)didClickAddButtonInSection:(NSInteger)section {
    #warning: TODO!
}
-(void)didClickHeaderInSection:(NSInteger)section {
    [self.model processClickHeaderInSection:section];
    
    
    #warning: TODO!
}



#pragma mark - MainPageModelDelegate 

-(void)shouldReloadSection:(NSInteger)section {
    NSIndexSet *set = [NSIndexSet  indexSetWithIndex:section];
    [self.taskTableView reloadSections:set withRowAnimation:UITableViewRowAnimationAutomatic];

}


@end
