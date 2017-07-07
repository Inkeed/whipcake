//
//  MainPageModel.m
//  whipcake
//
//  Created by Gennadii on 5/23/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "MainPageModel.h"


@interface MainPageModel()

@property (nonatomic) NSInteger numberForFirstSection;
@property (nonatomic) NSInteger numberForSecondSection;
@property (nonatomic) NSInteger numberForThirdSection;

@end

@implementation MainPageModel

-(NSInteger)numberOfSections {
#warning TODO:
    return 3;
}

-(NSInteger)numberOfRowsInSection:(NSInteger)section {
    #warning TODO:
    switch (section) {
        case 0:
            return self.numberForFirstSection;
            break;
        case 1:
            return self.numberForSecondSection;
            break;
        case 2:
            return self.numberForThirdSection;
            break;
    }

    
    
    return 0;
}

-(NSString *)textForHeaderInSection:(NSInteger)section {
#warning TODO:
    return [NSString stringWithFormat:@"Section #%li",section];
}

-(MainPageHeaderViewModel *)viewModelForSection:(NSInteger)section {
    #warning TODO:
    return [[MainPageHeaderViewModel alloc] init];
}


-(void)processClickHeaderInSection:(NSInteger) section {
    switch (section) {
        case 0:
            if (self.numberForFirstSection == 0) {
                self.numberForFirstSection = 3;
            } else {
                self.numberForFirstSection = 0;
            }
            
            break;
        case 1:
            if (self.numberForSecondSection == 0) {
                self.numberForSecondSection = 3;
            } else {
                self.numberForSecondSection = 0;
            }
            break;
        case 2:
            if (self.numberForThirdSection == 0) {
                self.numberForThirdSection = 3;
            } else {
                self.numberForThirdSection = 0;
            }
            break;
    }
    
    [self.delegate shouldReloadSection:section];
}



@end
