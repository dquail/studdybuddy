//
//  ProfileViewController.h
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface ProfileViewController : UIViewController{
    UILabel *_nameLabel;
    UILabel *_universityLabel;
    UILabel *_descriptionLabel;
    UILabel *_emailLabel;
    UIImageView *_imageView;
    
    UIButton *_inviteButton;
    User *_user;
    
    BOOL _inviteEnabled;
}

@property (nonatomic, retain) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) IBOutlet UILabel *universityLabel;
@property (nonatomic, retain) IBOutlet UILabel *descriptionLabel;
@property (nonatomic, retain) IBOutlet UILabel *emailLabel;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UIButton *inviteButton;

@property BOOL inviteEnabled;

@property (nonatomic, retain) User * user;

@end
