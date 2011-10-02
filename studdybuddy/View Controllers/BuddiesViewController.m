//
//  BuddiesViewController.m
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BuddiesViewController.h"
#import "StuddyBuddyServer.h"
#import "User.h"
#import "ProfileViewController.h"

@implementation BuddiesViewController

@synthesize buddies = _buddies;
@synthesize matchedBuddies = _matchedBuddies;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.title = @"Buddies";
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

    //TODO - Load async
    _matchedBuddies = [[[StuddyBuddyServer server] getBuddiesForClass:nil] retain];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   // Return the number of sections.

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (section == 0){
        return [_matchedBuddies count];
    }
    else {
        return [_buddies count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
    User *buddy;
    if (indexPath.section == 0){
        buddy = [_matchedBuddies objectAtIndex:indexPath.row];
    }
    else{
        buddy = [_buddies objectAtIndex:indexPath.row];
    }
    
    cell.textLabel.text = buddy.name;
    cell.detailTextLabel.text = buddy.userDescription;
    //TODO - Use a real image
    NSString *imageName = [NSString stringWithFormat:@"%d.jpg", indexPath.row];
    cell.imageView.image = [UIImage imageNamed:imageName];
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section==0) {
        return @"My study partners";
    } 
    else if (section==1) {
        if ([_buddies count] == 0) {
            return @"";
        }
        else{
            return @"Other people looking to study";
        }
    }
    
    return @"";
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    User *user = [_buddies objectAtIndex:indexPath.row];
    ProfileViewController *profileController = [[[ProfileViewController alloc] 
                                                 initWithNibName:nil bundle:nil] autorelease];
    
    UIImage *image;
    //TODO - Use a real image
    if (indexPath.row < 10){
        NSString *imageName = [NSString stringWithFormat:@"%d.jpg", indexPath.row];
        user.image = [UIImage imageNamed:imageName];
    }
    if (nil == image){
        user.image = [[UIImage imageNamed:@"JaneDoe.jpg"] autorelease];
    }
    profileController.user = user;
    
    if (indexPath.section == 1){
        //user can invite
        profileController.inviteEnabled = YES;
    }
    else{
        profileController.inviteButton.enabled = NO;
    }
    [self.navigationController pushViewController:profileController animated:YES];
    
    profileController.title = user.name;
    
}

@end
