//
//  AppDelegate.swift
//  FirebaseDevProdSwitchTest
//
//  Created by Tarsicio Spraggon Hernández on 25/07/2022.
//

import UIKit
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        guard let googleServiceInfoName = Bundle.main.object(forInfoDictionaryKey: "GoogleServiceInfoName") as? String else {
            assert(false, "Couldn't load info name")
        }
        
        let filePath = Bundle.main.path(forResource: googleServiceInfoName, ofType: "plist")
       
        guard let fileopts = FirebaseOptions(contentsOfFile: filePath!)
          else { assert(false, "Couldn't load config file") }
        
        FirebaseApp.configure(options: fileopts)
        
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

