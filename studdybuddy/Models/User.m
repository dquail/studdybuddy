//
//  User.m
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "User.h"

@implementation User
@synthesize studentId = _studentId;
@synthesize name = _name;
@synthesize university = _university;
@synthesize email = _email;

- (id) initWithId:(NSString *)studentId andName:(NSString *)name andEmail:(NSString *)email andUniversity:(NSString *)university{
    self = [self init];
    if (self){
        _studentId = [studentId retain];
        _name = [name retain];
        _university = [university retain];
        _email = email;
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void) dealloc{
    self.studentId = nil;
    self.name = nil;
    self.university = nil;
    self.email = nil;
    [super dealloc];
}

@end
