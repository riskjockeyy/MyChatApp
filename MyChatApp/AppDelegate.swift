//
//  AuthViewModel.swift
//  MyChatApp
//
//  Created by Bharat Singh on 22/02/22.
//

import Foundation
import UIKit
import Firebase




class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()


    return true
  }
}
