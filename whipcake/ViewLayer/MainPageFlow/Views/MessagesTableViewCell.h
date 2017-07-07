//
//  MessagesTableViewCell.h
//  whipcake
//
//  Created by Gennadii on 6/13/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MessagesTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *senderNameButton;
@property (weak, nonatomic) IBOutlet UIButton *senderIconButton;

@end
