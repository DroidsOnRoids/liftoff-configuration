//
//  AppDelegate.swift
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

import UIKit
import HockeySDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
<% if dependency_manager_enabled?("cocoapods") %>
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // HockeyApp implementation
        BITHockeyManager.sharedHockeyManager().configureWithIdentifier("APP_IDENTIFIER")
        BITHockeyManager.sharedHockeyManager().startManager()
        BITHockeyManager.sharedHockeyManager().authenticator.authenticateInstallation()
        
        return true
    }
<% end %>
}