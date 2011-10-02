//
//  BuddiesViewController.h
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BuddiesViewController : UITableViewController{
    NSArray *_buddies;
    NSArray *_matchedBuddies;
}

@property (nonatomic, retain) NSArray *buddies;
@property (nonatomic, retain) NSArray *matchedBuddies;

@end
