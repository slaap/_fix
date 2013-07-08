//
//  EventViewController.h
//  Phant
//
//  Created by Luke Carelsen on 2013/07/02.
//  Copyright (c) 2013 Luke Carelsen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginRefViewController.h"


@interface MyPhantViewController : UIViewController < UITableViewDataSource, UITableViewDelegate,
UITabBarDelegate>
@property (weak, nonatomic) IBOutlet UITableView *eventTableView;
@property (strong, nonatomic) IBOutlet UITabBarItem *eventTab;
@property (strong, nonatomic) IBOutlet UITabBar *myNavBar;

@end
