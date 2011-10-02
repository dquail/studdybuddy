//
//  StuddyBuddyServer.h
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User; 
@class Course;

@interface StuddyBuddyServer : NSObject

- (NSArray *) getClasses;
- (NSArray *) getBuddiesForClass:(Course *)course;
- (NSArray *) getMatchedBuddies:(Course *)course;
- (User *) getCurrentUser;

+ (StuddyBuddyServer *) server;

@end
