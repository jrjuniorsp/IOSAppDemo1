//
//  FeedNoticias.m
//  IOSAppDemo1
//
//  Created by Jair Rillo Junior on 6/15/14.
//  Copyright (c) 2014 Jair Rillo Junior. All rights reserved.
//

#import "FeedNoticias.h"

@implementation FeedNoticias

@synthesize title;
@synthesize detail;

-(id)initWithTitle:(NSString *) pTitle andDetail:(NSString *)pDetail {
    self = [super init];
    if (self) {
        self.title = pTitle;
        self.detail = pDetail;
    }
    return self;
}

@end
