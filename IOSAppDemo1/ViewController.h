//
//  ViewController.h
//  IOSAppDemo1
//
//  Created by Jair Rillo Junior on 6/15/14.
//  Copyright (c) 2014 Jair Rillo Junior. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
}

-(IBAction)login:(id)sender;

@end
