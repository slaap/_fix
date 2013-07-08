//
//  LoginRefViewController.h
//  Phant
//
//  Created by Luke Carelsen on 2013/07/01.
//  Copyright (c) 2013 Luke Carelsen. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "EventViewController.h"



@interface LoginRefViewController : UIViewController <FBUserSettingsDelegate>


//-(void) myMove;

@property (unsafe_unretained, nonatomic) IBOutlet FBLoginView *FBLoginView;


@end
