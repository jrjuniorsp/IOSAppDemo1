//
//  FeedDetailViewController.m
//  IOSAppDemo1
//
//  Created by Jair Rillo Junior on 6/15/14.
//  Copyright (c) 2014 Jair Rillo Junior. All rights reserved.
//

#import "FeedDetailViewController.h"

@interface FeedDetailViewController ()

@end

@implementation FeedDetailViewController

-(void) setFeedNoticia:(FeedNoticias *) pFeedNoticia {
    feedNoticia = pFeedNoticia;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [textView setText:feedNoticia.detail];
    [self.navigationItem setTitle:feedNoticia.title];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
