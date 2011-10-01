//
//  Course.m
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Course.h"

@implementation Course

@synthesize courseId = _courseId;
@synthesize name = _name;
@synthesize courseDescription = _courseDescription;
@synthesize notes = _notes;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (id) initWithCourseId:(NSString *)courseId 
                andName:(NSString *)name 
         andDescription:(NSString *)description 
               andNotes:(NSString *)notes{

    self = [self init];

    if (self){
        _courseId = [courseId retain];
        _name = [name retain];
        _courseDescription = [description retain];
        _notes = [notes retain];
    }
    
    return self;
}
@end
