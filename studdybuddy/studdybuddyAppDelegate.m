//
//  studdybuddyAppDelegate.m
//  studdybuddy
//
//  Created by David Quail on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "studdybuddyAppDelegate.h"
#import "ClassesViewController.h"
#import "BuddiesViewController.h"
#import "ProfileViewController.h"

@interface studdybuddyAppDelegate ()
- (void) setupUI;
@end

@implementation studdybuddyAppDelegate

@synthesize window = _window;

#pragma mark - Lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self setupUI];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

#pragma mark - UI

- (void) setupUI{
    /*
     TweetsViewController *tweetsController = [[[TweetsViewController alloc] initWithStyle:UITableViewStylePlain] autorelease];
     UINavigationController *tweetsNavigationController = [[[UINavigationController alloc] 
     initWithRootViewController:tweetsController] autorelease];
     
     tweetsNavigationController.tabBarItem = [[[UITabBarItem alloc] initWithTitle:@"Tweets"
     image:[UIImage imageNamed:@"tweets.png"] tag:1] autorelease];    
     
     QuestionsViewController *questionsController = [[[QuestionsViewController alloc] initWithStyle:UITableViewStylePlain] autorelease];
     UINavigationController *questionsNavigationController = [[[UINavigationController alloc] 
     initWithRootViewController:questionsController] autorelease];
     
     questionsController.tabBarItem = [[[UITabBarItem alloc] initWithTitle:@"Questions"
     image:[UIImage imageNamed:@"questions.png"] tag:1] autorelease];        
     
     AnnouncementsViewController *announcementsController = [[[AnnouncementsViewController alloc] initWithStyle:UITableViewStylePlain] autorelease];
     UINavigationController *announcementsNavigationController = [[[UINavigationController alloc]
     initWithRootViewController:announcementsController] autorelease];
     announcementsController.tabBarItem = [[[UITabBarItem alloc] initWithTitle:@"Announcements"
     image:[UIImage imageNamed:@"announcements.png"] tag:1] autorelease];    
     
     UITabBarController *tabBarController = [[[UITabBarController alloc] init] autorelease];
     tabBarController.viewControllers = [NSArray arrayWithObjects:tweetsNavigationController, questionsNavigationController, announcementsNavigationController, nil];
     
     self.window.rootViewController = tabBarController;         
     */
    
    //Profile
    ProfileViewController *profileController = [[[ProfileViewController alloc] 
                                                 initWithNibName:nil bundle:nil] autorelease];
    //TODO - Use the real logged in user
    User *david = [[[User alloc] 
                    initWithId:@"1" andName:@"David Quail" andDescription:@"I'm a 4th year computer science student.  I'm looking for a serious study partner, but also one that doesn't take things too seriously.  Beer is good too. "
                    andEmail:@"dquail@hotmail.com" andUniversity:@"University of Regina"]autorelease];
    david.image = [[UIImage imageNamed:@"Me.jpg"] autorelease];
    profileController.user = david;
    UINavigationController *profileNavigationController = [[[UINavigationController alloc]
                                                            initWithRootViewController:profileController] autorelease];
    profileNavigationController.tabBarItem = [[[UITabBarItem alloc]
                                               initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1] autorelease];
    //Classes 
    ClassesViewController *classesController = [[[ClassesViewController alloc] initWithStyle:UITableViewStylePlain] autorelease];
    
    UINavigationController *classesNavigationController = [[[UINavigationController alloc] 
                                                            initWithRootViewController:classesController] autorelease];
    
    classesNavigationController.tabBarItem = [[[UITabBarItem alloc] 
                                               initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:2] autorelease];
    
    //Buddies
    BuddiesViewController *buddiesController = [[[BuddiesViewController alloc]
                                                 initWithStyle:UITableViewStylePlain] autorelease];
    UINavigationController *buddiesNavigationController = [[[UINavigationController alloc]
                                                            initWithRootViewController:buddiesController] autorelease];
    buddiesNavigationController.tabBarItem = [[[UITabBarItem alloc]
                                               initWithTabBarSystemItem:UITabBarSystemItemContacts tag:3] autorelease];
    
    //Tab bar
    UITabBarController *tabBarController = [[[UITabBarController alloc] init] autorelease];
    tabBarController.viewControllers = [NSArray arrayWithObjects:profileNavigationController, classesNavigationController, buddiesNavigationController, nil];
    
    self.window.rootViewController = tabBarController;
}
@end
