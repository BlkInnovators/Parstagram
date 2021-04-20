//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Sydney Jenkins on 2/28/21.
//

import UIKit
import Parse 

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Codepath
        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "CZS25n7EhWo4BtvoKBPuAdPzS1rCFuXu7w1KfwFi" // <- UPDATED
                $0.clientKey = "DTz47GHJ5rM1siMSQZ2xKYMoAHGQrtSpVUWi3e14" // <- UPDATED
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
        if PFUser.current() != nil {
            let main = UIStoryboard(name: "Main", bundle: nil)
            let feedNavigationController = main.instantiateViewController(withIdentifier: "FeedNavigationController")
            
            window?.rootViewController = feedNavigationController
            
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

