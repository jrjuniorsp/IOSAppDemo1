//
//  FeedDetailViewController.h
//  IOSAppDemo1
//
//  Created by Jair Rillo Junior on 6/15/14.
//  Copyright (c) 2014 Jair Rillo Junior. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedNoticias.h"

@interface FeedDetailViewController : UIViewController {
    IBOutlet UITextView *textView;
    FeedNoticias *feedNoticia;
}
-(void) setFeedNoticia:(FeedNoticias *) pFeedNoticia;


@end
