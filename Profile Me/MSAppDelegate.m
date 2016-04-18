//
//  MSAppDelegate.m
//  Marcelo on Gigster
//
//  Created by Marcelo Salloum dos Santos on 4/18/16.
//  Copyright (c) 2016 Marcelo Salloum on Gigster. All rights reserved.
//


#import "MSAppDelegate.h"
#import "PMHomeViewController.h"


@interface MSAppDelegate ()

@end

@implementation MSAppDelegate


#pragma mark - Lifecycle


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

	[self setupRootViewController];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


#pragma mark - Root View Controller


- (void)setupRootViewController
{
	// Resets the rootViewController if needed:
	if (self.window.rootViewController != nil) {
		[self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
		self.window.rootViewController = nil;
	}

	// Sets the initial controller as the root and make it visible.
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[self.window setBackgroundColor:[UIColor whiteColor]];
	[self setStatusBarColor:[UIColor blueColor]];

	// Allocs and inits homeViewController and set it as rootViewController
	PMHomeViewController *homeViewController = [[PMHomeViewController alloc] initWithStyle:UITableViewStyleGrouped];
	UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
	self.window.rootViewController = navigationController;
	[self.window makeKeyAndVisible];
}


- (void)setStatusBarColor:(UIColor *)color
{
	[self.window setBackgroundColor:color];
}


@end