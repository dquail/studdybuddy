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
@synthesize image = _image;
@synthesize userDescription = _description;
@synthesize isSelf = _isSelf;

- (id) initWithId:(NSString *)studentId andName:(NSString *)name andDescription:(NSString *)description andEmail:(NSString *)email andUniversity:(NSString *)university{
    self = [self init];
    if (self){
        _studentId = [studentId retain];
        _name = [name retain];
        _university = [university retain];
        _email = [email retain];
        _description = [description retain];
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
    self.userDescription = nil;
    [super dealloc];
}

@end
