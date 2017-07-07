//
//  FindGuarantViewController.m
//  whipcake
//
//  Created by Gennadii on 6/7/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "FindGuarantViewController.h"
#import "FindGuarantPageModel.h"

@interface FindGuarantViewController ()
@property (nonatomic, strong) FindGuarantPageModel *model;
@end

@implementation FindGuarantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
- (IBAction)didClickGuarantorSearchButton:(id)sender {
}
- (IBAction)didClickAddGuarantorButton:(id)sender {
}

-(FindGuarantPageModel *)model {
    if (!_model) {
        _model = [[FindGuarantPageModel alloc] init];
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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"findGuarantorCell"];
    
    return cell;
}

@end
