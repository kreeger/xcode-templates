//
//  AppDelegate.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	_window.backgroundColor = [UIColor whiteColor];
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
	UIViewController *vc = [storyboard instantiateInitialViewController];
	_window.rootViewController = vc;
    [_window makeKeyAndVisible];
	
	return YES;
}

- (void)applicationWillTerminate:(UIApplication *) application{

}

- (void)applicationDidEnterBackground:(UIApplication *) application{

}

- (void)applicationDidBecomeActive:(UIApplication *) application{
	
}

- (void)dealloc {
	self.window = nil;
    [super dealloc];
}


@end
