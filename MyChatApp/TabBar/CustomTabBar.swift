//
//  CustomTabBar.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var isShowingHomePaga :Bool
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
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(isShowingHomePaga: .constant(true))
    }
}
