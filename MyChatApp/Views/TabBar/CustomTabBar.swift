//
//  CustomTabBar.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI
import LocalAuthentication

struct CustomTabBar: View {
    @Binding var isShowingHomePaga :Bool
    @State private var loggedInFaceId = false
    var body: some View {
        
        
            
                TabView {
                    ChatView()
                    .tabItem {
                        //
                        VStack {
                            Image(systemName: "message")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .scaledToFit()
                            Text("Chats")
                        }
                    }
                
                ContactsView()
                    .tabItem {
                        //
                        VStack {
                            Image(systemName: "person.2")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .scaledToFit()
                            Text("Contacts")
                        }
                    }
                
                ProfileView(isShowingHomePaga: $isShowingHomePaga)
                    .tabItem {
                        //
                        VStack {
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .scaledToFit()
                            Text("Profile")
                        }
                    }
                }
                .onAppear {
                    authenticate()
                }
            
        
        
                
    }
    
    func authenticate() {
        
        let context = LAContext()
        var error:NSError?
        let reason = "We need to unlock your data"
        
        if  context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)  {
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, error in
                
                if success {
                    loggedInFaceId = true
                }
                else {
                    // we have error
                }
            }
        }
        else {
            // no biomatric
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(isShowingHomePaga: .constant(true))
    }
}
