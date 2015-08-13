//
//  MediatorController.h
//  MediatorDesignParttern
//
//  Created by Demon_Yao on 8/11/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ViewControllerRequestType) {
    kRequestDismissViewController    = 100,
    kRequestToSecondViewController   = 101
};

@interface MediatorController : UIViewController

- (IBAction)requestViewControllerChangeByObject:(id)sender;

@end
