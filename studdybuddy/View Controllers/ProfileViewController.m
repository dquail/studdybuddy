//
//  ProfileViewController.m
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ProfileViewController.h"

@implementation ProfileViewController

@synthesize nameLabel = _nameLabel;
@synthesize universityLabel = _universityLabel;
@synthesize descriptionLabel = _descriptionLabel;
@synthesize emailLabel = _emailLabel;
@synthesize imageView = _imageView;
@synthesize user = _user;
@synthesize inviteButton = _inviteButton;
@synthesize uninviteButton = _uninviteButton;
@synthesize inviteEnabled = _inviteEnabled;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Profile";
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (self.user){
        self.nameLabel.text = self.user.name;
        self.universityLabel.text = self.user.university;
        self.descriptionLabel.text = self.user.userDescription;
        self.emailLabel.text = self.user.email;
        self.imageView.image = self.user.image;
    }
    
    //TODO - Use real image
    else{
        self.imageView.image = [UIImage imageNamed:@"JaneDoe.jpg"];
    }
    
    if (self.inviteEnabled){
        self.inviteButton.hidden = NO;
        self.uninviteButton.hidden = YES;

    }
    else{
        if (self.user.isSelf){
            self.uninviteButton.hidden = YES;
        }
        else{
            self.uninviteButton.hidden = NO;
        }
        self.inviteButton.hidden = YES;
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)showMessage:(NSString*)message{
    UIAlertView *alert = [[[UIAlertView alloc] initWithTitle: @"StuddyBuddy" message:message 
                                                          delegate: self cancelButtonTitle:@"OK" otherButtonTitles:nil] autorelease];
	[alert show];
}

- (IBAction)onInviteButtonUp:(id)sender{
    [self showMessage:@"Invitation to partner up has been sent.  They'll just have to accept the request before you're able to communicate"];
}

- (IBAction)onUnInviteButtonUp:(id)sender{
    [self showMessage:@"Successfully removed"];
    self.uninviteButton.hidden = YES;
    self.inviteButton.hidden = NO;
}

@end
