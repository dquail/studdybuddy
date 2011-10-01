//
//  BuddyRequest.h
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#import "User.h"
#import "Course.h"
#import <Foundation/Foundation.h>

@interface BuddyRequest : NSObject{
    User *_requestingUser;
    Course *_requestingCourse;
    NSString *_message;
}

@property (nonatomic, retain) User *requestingUser;
@property (nonatomic, retain) Course *requestingCourse;
@property (nonatomic, retain) NSString *message;

- (id) initForRequestingUser:(User*)user andCourse:(Course *)course andMessage:(NSString *)message;

@end
