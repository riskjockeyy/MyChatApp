//
//  ProfileView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct ProfileView: View {
    @State var searchableText = ""
    @Binding var isShowingHomePaga :Bool
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    ZStack {
                        Circle()
                            .frame(width: 131, height: 131)
                            .foregroundColor(.white)
                        Circle()
                            .stroke(.blue)
                            .frame(width: 131, height: 131)
                          
                        
                            
                    }
                    .padding(.bottom, 30)
                    Text("Sam Billing")
                        .font(.system(size: 18, weight: .heavy))
                        .padding()
                   
                    
                    HStack {
                        Image(systemName: "person")
                        Text("Account Details")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .padding()
                    
                    HStack {
                        Image(systemName: "gear")
                        Text("Settings")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .padding()
                    
                    HStack {
                        Image(systemName: "phone")
                        Text("Account Details")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .padding()
                    
                    
                    Button {
                        // logout
                        isShowingHomePaga = false
                    } label: {
                        
                        CustomButton(buttonText: "Log Out")
                    }
                    .padding(.top, 30)

                }
                .navigationTitle("Profile")
                .navigationViewStyle(.stack)
            
            }
        }

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(isShowingHomePaga: .constant(true))
    }
}
