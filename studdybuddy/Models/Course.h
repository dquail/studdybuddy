//
//  Course.h
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject{
    NSString *_courseId;
    NSString *_name;
    NSString *_courseDescription;
    NSString *_notes;
}

@property (nonatomic, retain) NSString *courseId;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *courseDescription;
@property (nonatomic, retain) NSString *notes;

- (id) initWithCourseId:(NSString *)courseId andName:(NSString *)name andDescription:(NSString *)description andNotes:(NSString *)notes;
                                                                                      
@end
