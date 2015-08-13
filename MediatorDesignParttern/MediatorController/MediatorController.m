//
//  MediatorController.m
//  MediatorDesignParttern
//
//  Created by Demon_Yao on 8/11/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import "MediatorController.h"

@interface MediatorController ()

@end

@implementation MediatorController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)requestViewControllerChangeByObject:(id)sender
{
    UIViewController *rootViewController = [[UIApplication sharedApplication].delegate window].rootViewController;
    
    ViewControllerRequestType type = [sender tag];
    
    if (type == kRequestDismissViewController) {
        
        [rootViewController.presentedViewController dismissViewControllerAnimated:YES completion:nil];
        
    } else if (type == kRequestToSecondViewController) {
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SecondStoryboard" bundle:nil];
        UINavigationController *secondNavigationController = [storyboard instantiateViewControllerWithIdentifier:@"SecondNavigationController"];
        [rootViewController presentViewController:secondNavigationController animated:YES completion:nil];
        
    }
}

@end
