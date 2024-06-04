//
//  LivePollApp.swift
//  LivePoll
//
//  Created by daksh vasudev on 03/06/24.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore

class AppDelegate : NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        let settings = Firestore.firestore().settings
        /// Inorder to connect to the real server comment the three lines below
//        settings.host = "127.0.0.1:8080"
//        settings.cacheSettings = MemoryCacheSettings()
//        settings.isSSLEnabled = false
        Firestore.firestore().settings = settings
        return true
    }
}

@main
struct LivePollApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                HomeView()
            }
        }
    }
}
