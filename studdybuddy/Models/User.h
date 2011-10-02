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
    NSString *_description;
    NSString *_email;
    //TODO - Use an image url
    UIImage *_image;
    
    BOOL isSelf;
}

@property (nonatomic, retain) NSString *studentId;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *university;
@property (nonatomic, retain) NSString *userDescription;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) UIImage *image;
@property BOOL isSelf;

- (id) initWithId:(NSString *)studentId andName:(NSString *)name andDescription:(NSString *)description andEmail:(NSString *)email andUniversity:(NSString *)university;

@end
