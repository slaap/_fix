//
//  AppDelegate.h
//  Mon
//
//  Created by Luke Carelsen on 2013/07/01.
//  Copyright (c) 2013 Luke Carelsen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginRefViewController.h"
#import "TestViewController.h"
#import "MyPhantViewController.h"
#import "ProfilePicTestViewController.h"

extern NSString *const SCSessionStateChangedNotification;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FBSession *session;
@property (strong, nonatomic) LoginRefViewController* loginViewController;



@end
