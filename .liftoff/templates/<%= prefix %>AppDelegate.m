//
//  <%= prefix %>AppDelegate.m
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%d.%m.%Y") %>.
//  Copyright © <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

// App Delegate
#import "<%= prefix %>AppDelegate.h"
<% if dependency_manager_enabled?("cocoapods") %>
// Frameworks
@import HockeySDK;
<% end %>
@implementation <%= prefix %>AppDelegate
<% if dependency_manager_enabled?("cocoapods") %>
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // HockeyApp implementation
    [[BITHockeyManager sharedHockeyManager] configureWithIdentifier:@"APP_IDENTIFIER"];
    [[BITHockeyManager sharedHockeyManager] startManager];
    [[BITHockeyManager sharedHockeyManager].authenticator authenticateInstallation];

    return YES;
}
<% end %>
@end
