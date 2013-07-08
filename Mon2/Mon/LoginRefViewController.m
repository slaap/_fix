//
//  LoginRefViewController.m
//  Phant
//
//  Created by Luke Carelsen on 2013/07/01.
//  Copyright (c) 2013 Luke Carelsen. All rights reserved.
//

#import "LoginRefViewController.h"
#import "AppDelegate.h"
#import "ProfilePicTestViewController.h"

@interface LoginRefViewController ()

@property (strong, nonatomic) IBOutlet UITextView *textNoteOrLink;
//@property myMove();

@end



@implementation LoginRefViewController

@synthesize textNoteOrLink = _textNoteOrLink;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
 
    
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
   // [super viewWillAppear:animated];
    
//    [FBLoginView class];
   
    if (FBSessionStateOpen) {
        
    //    [self myMove];
           [self performSegueWithIdentifier:@"mySeq" sender:self];
        
    }

    
    
}



- (void)loginView:(FBLoginView *)loginView
      handleError:(NSError *)error{
    NSString *alertMessage, *alertTitle;
    
    // Facebook SDK * error handling *
    // Error handling is an important part of providing a good user experience.
    // Since this sample uses the FBLoginView, this delegate will respond to
    // login failures, or other failures that have closed the session (such
    // as a token becoming invalid). Please see the [- postOpenGraphAction:]
    // and [- requestPermissionAndPost] on `SCViewController` for further
    // error handling on other operations.
    
    if (error.fberrorShouldNotifyUser) {
        // If the SDK has a message for the user, surface it. This conveniently
        // handles cases like password change or iOS6 app slider state.
        alertTitle = @"Something Went Wrong";
        alertMessage = error.fberrorUserMessage;
    } else if (error.fberrorCategory == FBErrorCategoryAuthenticationReopenSession) {
        // It is important to handle session closures as mentioned. You can inspect
        // the error for more context but this sample generically notifies the user.
        alertTitle = @"Session Error";
        alertMessage = @"Your current session is no longer valid. Please log in again.";
    } else if (error.fberrorCategory == FBErrorCategoryUserCancelled) {
        // The user has cancelled a login. You can inspect the error
        // for more context. For this sample, we will simply ignore it.
        NSLog(@"user cancelled login");
    } else {
        // For simplicity, this sample treats other errors blindly, but you should
        // refer to https://developers.facebook.com/docs/technical-guides/iossdk/errors/ for more information.
        alertTitle  = @"Unknown Error";
        alertMessage = @"Error. Please try again later.";
        NSLog(@"Unexpected error:%@", error);
    }
    
    if (alertMessage) {
        [[[UIAlertView alloc] initWithTitle:alertTitle
                                    message:alertMessage
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil] show];
    }
}


// FBSample logic
// handler for button click, logs sessions in or out


#pragma mark Template generated code

/*- (void)viewDidUnload
{
    [super viewDidUnload];

    self.buttonLoginLogout = nil;
    self.textNoteOrLink = nil;
    
}*/

- (void)viewDidUnload {
   // [self setFBLoginView:nil];
    [super viewDidUnload];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

#pragma mark -

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
