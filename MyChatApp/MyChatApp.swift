//
//  MyChatAppApp.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI


@main
struct MyChatApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            LoginPage()
                .environmentObject(ContentViewModel())
            
            
        }
    }
}
