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
                         [[[Course alloc] initWithCourseId:@"2" 
                                                   andName:@"AST101" 
                                            andDescription:@"Introduction to Astronomy" 
                                                  andNotes:@""] autorelease],                        
                         [[[Course alloc] initWithCourseId:@"3" 
                                                   andName:@"AST200" 
                                            andDescription:@"Planetary orbits" 
                                                  andNotes:@""] autorelease],                               
                        [[[Course alloc] initWithCourseId:@"1" 
                                                  andName:@"AST210" 
                                           andDescription:@"Modern physics in Astronomy" 
                                                 andNotes:@""] autorelease],
                         [[[Course alloc] initWithCourseId:@"2" 
                                                   andName:@"BIO120" 
                                            andDescription:@"Introduction to Biology" 
                                                  andNotes:@""] autorelease],                        
                         [[[Course alloc] initWithCourseId:@"3" 
                                                   andName:@"BIO125" 
                                            andDescription:@"Molecular Life" 
                                                  andNotes:@""] autorelease],                               
                         [[[Course alloc] initWithCourseId:@"1" 
                                                   andName:@"BIO200" 
                                            andDescription:@"Biology in modern medicine" 
                                                  andNotes:@""] autorelease],
                         [[[Course alloc] initWithCourseId:@"2" 
                                                  andName:@"CS324" 
                                           andDescription:@"Algorithms" 
                                                 andNotes:@""] autorelease],                        
                        [[[Course alloc] initWithCourseId:@"3" 
                                                  andName:@"CS402" 
                                           andDescription:@"Data structures" 
                                                 andNotes:@""] autorelease],      
                         [[[Course alloc] initWithCourseId:@"4" 
                                                   andName:@"ENG122" 
                                            andDescription:@"English studies" 
                                                  andNotes:@""] autorelease],
                         [[[Course alloc] initWithCourseId:@"5" 
                                                   andName:@"ENG144" 
                                            andDescription:@"Shakespear" 
                                                  andNotes:@""] autorelease],                        
                         [[[Course alloc] initWithCourseId:@"6" 
                                                   andName:@"ENG245" 
                                            andDescription:@"Writing in 1800s" 
                                                  andNotes:@""] autorelease],                              
                         nil] autorelease];
    return classes;
    
}

- (NSArray *) getMatchedBuddies:(Course *)course{
    //TODO - Return actual buddies from server for actual course
    NSArray *buddies = [[[NSArray alloc] initWithObjects:
                       [[[User alloc] initWithId:@"1" andName:@"Kanye West" andDescription:@"I love rap, hip hop and signing.  Also a bit of a math nerd" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],
                       [[[User alloc] initWithId:@"2" andName:@"Jason Woo" andDescription:@"Javascript is evil.  Looking for someone who understands it best.  I'm great at C++" andEmail:@"jwoo@gmail.com" andUniversity:@"Washington State"] autorelease],
                       [[[User alloc] initWithId:@"3" andName:@"Phillipe Leak" andDescription:@"Ive been working on computers for several years now.  Very strong technically.  Great calculus.  Like to have fun" andEmail:@"phillipe@leak.com" andUniversity:@"Washington State"] autorelease],
                       nil] autorelease];
    return buddies;
}

- (NSArray *) getBuddiesForClass:(Course *)course{
    //TODO - Return actual buddies from server for actual course
    NSArray *buddies;
    
    if (course == nil){
        //Return matches
        buddies = [[[NSArray alloc] initWithObjects:
            [[[User alloc] initWithId:@"1" andName:@"Kent Reiffershied" andDescription:@"I'm a skateboarder and ride bikes" andEmail:@"kent@gulllakemail.com" andUniversity:@"Washington State"] autorelease],
            [[[User alloc] initWithId:@"2" andName:@"Abbie Connick" andDescription:@"I'm a huge fan of ultimate frisbee.  Woot woot" andEmail:@"acconnick@gmail.com" andUniversity:@"Washington State"] autorelease],
            [[[User alloc] initWithId:@"3" andName:@"Trent Reznor" andDescription:@"I love my music.  The heavier the better.  I'm currently studying and going after my masters in music education" andEmail:@"trent@nin.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"1" andName:@"Kanye West" andDescription:@"I love rap, hip hop and signing.  Also a bit of a math nerd" andEmail:@"kanye@yahoo.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"2" andName:@"Jason Woo" andDescription:@"Javascript is evil.  Looking for someone who understands it best.  I'm great at C++" andEmail:@"jwoo@gmail.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"3" andName:@"Phillipe Leak" andDescription:@"Ive been working on computers for several years now.  Very strong technically.  Great calculus.  Like to have fun" andEmail:@"phillipe@leak.com" andUniversity:@"Washington State"] autorelease],                    
                    nil] autorelease];
    }
    
    else{
        buddies = [[[NSArray alloc] initWithObjects:
                    [[[User alloc] initWithId:@"1" andName:@"Kendra Court" andDescription:@"Im a big sports nut.  Also really like to study.  Looking for someone similar" andEmail:@"kendra@court.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"2" andName:@"Jason Kendall" andDescription:@"First time at university.  Good and fun studier" andEmail:@"jason.kendall@gmail.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"3" andName:@"Clint Nelson" andDescription:@"Good student, but relaxed too.  Have fun stdying with me!" andEmail:@"clint.nelson@kpmg.com" andUniversity:@"Washington State"] autorelease],
                    [[[User alloc] initWithId:@"4" andName:@"Jason Fenwick" andDescription:@"I like building things with computers" andEmail:@"jason_fenwick@yahoo.com" andUniversity:@"Washington State"] autorelease],                    
                    [[[User alloc] initWithId:@"5" andName:@"Steve Small" andDescription:@"Huge Mariners fan.  Really strong in math.  Not so much in English" andEmail:@"steve21e@yahoo.com" andUniversity:@"Washington State"] autorelease],                        
                    [[[User alloc] initWithId:@"6" andName:@"Trisha Wolfater" andDescription:@"I'm so smart I'm wicked" andEmail:@"trishawolfater@yahoo.com" andUniversity:@"Washington State"] autorelease],                                            
                    nil] autorelease];    }
    
    return buddies;
}

- (User *) getCurrentUser{
    //TODO - REturn actual Users from the server
    User *user = [[[User alloc] initWithId:@"1" andName:@"David Quail" andDescription:@"I'm a 4th year computer science student.  I'm looking for a serious study partner, but also one that doesn't take things too seriously.  Beer is good too." andEmail:@"dquail@hotmail.com" andUniversity:@"University of Regina"] autorelease];
    return user;
    
}
@end
