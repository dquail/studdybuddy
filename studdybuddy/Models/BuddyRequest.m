//
//  BuddyRequest.m
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BuddyRequest.h"

@implementation BuddyRequest

@synthesize requestingUser = _requestingUser;
@synthesize requestingCourse = _requestingCourse;
@synthesize message = _message;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}


- (id) initForRequestingUser:(User*)user andCourse:(Course *)course andMessage:(NSString *)message{
    self = [self init];
    if (self){
        _requestingUser = [user retain];
        _requestingCourse = [course retain];
        _message = [message retain];
    }
    return self;
}
@end
