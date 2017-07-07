//
//  MessagesViewController.m
//  whipcake
//
//  Created by Gennadii on 6/7/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "MessagesViewController.h"
#import "MessagesPageModel.h"
@interface MessagesViewController ()

@property (nonatomic, strong) MessagesPageModel *model;

@end

@implementation MessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(MessagesPageModel *)model {
    if (!_model) {
        _model = [[MessagesPageModel alloc] init];
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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"messagesCell"];
    
    return cell;
}


@end
