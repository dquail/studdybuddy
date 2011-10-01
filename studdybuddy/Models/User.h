//
//  User.h
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject{
    NSString *_studentId;
    NSString *_name;
    NSString *_university;
    NSString *_email;
}

@property (nonatomic, retain) NSString *studentId;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *university;
@property (nonatomic, retain) NSString *email;

- (id) initWithId:(NSString *)studentId andName:(NSString *)name andEmail:(NSString *)email andUniversity:(NSString *)university;

@end
