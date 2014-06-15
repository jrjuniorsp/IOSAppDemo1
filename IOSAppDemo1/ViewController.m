//
//  ViewController.m
//  IOSAppDemo1
//
//  Created by Jair Rillo Junior on 6/15/14.
//  Copyright (c) 2014 Jair Rillo Junior. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)login:(id)sender {
    //Validate the values
    if (![username hasText]) {
        UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Username é obrigatório" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [errorAlert show];
        return;
    }
    
    if (![password hasText]) {
        UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Password é obrigatório" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [errorAlert show];
    }
    //Abre a próxima página
    UIViewController *feedNoticiasTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FeedNoticiasTableViewController"];
    [self.navigationController pushViewController:feedNoticiasTableViewController animated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
