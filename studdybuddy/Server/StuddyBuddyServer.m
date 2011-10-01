//
//  StuddyBuddyServer.m
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StuddyBuddyServer.h"
#import "Course.h"
#import "User.h"

StuddyBuddyServer *_server;

@implementation StuddyBuddyServer

#pragma mark - lifecycle

+ (StuddyBuddyServer*) server{
    if (_server == nil){
        _server = [[StuddyBuddyServer alloc] init];
    }
    return _server;
}
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (NSArray *) getClasses{   
    NSArray *classes = [[[NSArray alloc] initWithObjects:
                        [[[Course alloc] initWithCourseId:@"1" 
                                                  andName:@"CS102" 
                                           andDescription:@"Computer science for beginners" 
                                                 andNotes:@""] autorelease],
                        [[[Course alloc] initWithCourseId:@"2" 
                                                  andName:@"CS324" 
                                           andDescription:@"Algorithms" 
                                                 andNotes:@""] autorelease],                        
                        [[[Course alloc] initWithCourseId:@"3" 
                                                  andName:@"CS402" 
                                           andDescription:@"Data structures" 
                                                 andNotes:@""] autorelease],                        
                        
                         nil] autorelease];
    return classes;
    
}

- (NSArray *) getBuddiesForClass:(Course *)course{
    //TODO - Return actual buddies from server for actual course
    NSArray *buddies;
    
    if (course == nil){
        buddies = [[[NSArray alloc] initWithObjects:
                    [[[User alloc] initWithId:@"1" andName:@"Kanye West" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],
                   [[[User alloc] initWithId:@"2" andName:@"Jason Woo" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],
                   [[[User alloc] initWithId:@"3" andName:@"Phillipe Leak" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],
                   nil] autorelease];
    }
    
    else{
        buddies = [[[NSArray alloc] initWithObjects:
                    [[[User alloc] initWithId:@"1" andName:@"Kendra Court" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"2" andName:@"Jason Kendall" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"3" andName:@"Clint Nelson" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"4" andName:@"Jason Fenwick" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],                    
                    [[[User alloc] initWithId:@"5" andName:@"Steve Small" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],                        
                    [[[User alloc] initWithId:@"6" andName:@"Trisha Wolfater" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],                                            
                    nil] autorelease];    }
    
    return buddies;
}

- (User *) getCurrentUser{
    //TODO - REturn actual Users from the server
    User *user = [[[User alloc] initWithId:@"1" andName:@"David Quail" andEmail:@"dquail@hotmail.com" andUniversity:@"University of Regina"] autorelease];
    return user;
    
}
@end
