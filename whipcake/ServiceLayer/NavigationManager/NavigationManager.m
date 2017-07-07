//
//  NavigationManager.m
//  whipcake
//
//  Created by Gennadii on 5/29/17.
//  Copyright © 2017 Gennady Oleynik. All rights reserved.
//

#import "NavigationManager.h"
#import "MainPageViewController.h"
#import "SignInViewController.h"
#import "ViewControllerFactory.h"

@implementation NavigationManager

+(instancetype)instance {
    static dispatch_once_t pred;
    static id shared = nil;
    dispatch_once(&pred, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

-(void)embedMainPageFlow {
    [UIView transitionWithView:[self mainWindow]
                      duration:0.5
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self mainWindow].rootViewController = [ViewControllerFactory.mainPageFlow initial];
                        [[self mainWindow] makeKeyAndVisible];
                    }
                    completion:nil];
    
}

-(void)embedLoginFlow {
    //TODO: improve animation
    [self mainWindow].rootViewController = [ViewControllerFactory.loginFlow initial];
    [[self mainWindow] makeKeyAndVisible];
}


-(UIWindow *)mainWindow {
    return UIApplication.sharedApplication.delegate.window;
}

@end
