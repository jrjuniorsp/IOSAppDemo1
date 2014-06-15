//
//  FeedNoticias.h
//  IOSAppDemo1
//
//  Created by Jair Rillo Junior on 6/15/14.
//  Copyright (c) 2014 Jair Rillo Junior. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedNoticias : NSObject

@property NSString *title;
@property NSString *detail;

-(id)initWithTitle:(NSString *) pTitle andDetail:(NSString *)pDetail;

@end
