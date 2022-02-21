//
//  MyChatAppApp.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

@main
struct MyChatAppApp: App {
    var body: some Scene {
        WindowGroup {
            LoginPage()
                .environmentObject(ContentViewModel())
        }
    }
}
