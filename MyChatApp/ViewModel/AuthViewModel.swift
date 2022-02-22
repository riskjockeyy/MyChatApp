//
//  AuthViewModel.swift
//  MyChatApp
//
//  Created by Bharat Singh on 22/02/22.
//

import Foundation
import FirebaseAuth

class AuthViewModel {
    
    
    static func logout() {
        
        try? Auth.auth().signOut()
    }
    
    
    static func isUserLoggedIn() -> Bool {
        
      return  Auth.auth().currentUser != nil
    }
    
    static func getLoggedInUserID() -> String {
      return  Auth.auth().currentUser?.uid ?? ""
    }
}
