//
//  FindExecutorViewController.m
//  whipcake
//
//  Created by Gennadii on 6/7/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "FindExecutorViewController.h"
#import "FindExecutorPageModel.h"
@interface FindExecutorViewController ()
@property (nonatomic, strong) FindExecutorPageModel *model;
@end

@implementation FindExecutorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
- (IBAction)didClickExecutorSearchButton:(id)sender {
}
- (IBAction)didClickAddExecutorButton:(id)sender {
}

-(FindExecutorPageModel *)model {
    if (!_model) {
        _model = [[FindExecutorPageModel alloc] init];
    }
    return _model;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [self.model numberOfSections];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.model numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"findExecutorCell"];
    
    return cell;
}

@end
