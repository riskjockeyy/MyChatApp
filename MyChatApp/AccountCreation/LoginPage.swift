//
//  LoginPage.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct LoginPage: View {
    @State var isShowingFullScreen = true
    @State var showingSigninPage = false
    @State var showingCreateAccountPage = false
    var body: some View {
        
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Image(systemName: "message.fill")
                    .resizable()
                    .frame(width: 140, height: 140)
                .foregroundColor(.blue)
                .padding(.bottom, 41)
                
                Text("Welcome to Instachatty")
                    .foregroundColor(.blue)
                    .font(.system(size: 24))
                    .padding(.bottom, 57)
                
                VStack {
                    Text("Stay in touch with your")
                        .foregroundColor(Color("secendoryText"))
                    Text("best friends.")
                        .foregroundColor(Color("secendoryText"))
                }
                .padding(.bottom, 40)
                
                
                VStack(spacing: 15) {
                    Button {
                        // login
                        showingSigninPage = true
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 197, height: 44)
                                .foregroundColor(.blue)
                            .cornerRadius(10)
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .medium, design: .default))
                            
                        }
                        .sheet(isPresented: $showingSigninPage) {
                            // on dismiss
                        } content: {
                            SignInView(showingSigninPage: $showingSigninPage)
                        }

                        
                }
                    
                    Button {
                        // create the account
                        showingCreateAccountPage = true
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 197, height: 44)
                                .foregroundColor(.blue)
                                .shadow(radius: 40)
                                
                            .cornerRadius(10)
                            
                            
                            Text("Sign Up")
                                .foregroundColor(Color(.white))
                                .font(.system(size: 18, weight: .medium, design: .default))
                            
                        }
                    }
                    .buttonStyle(.borderless)
                    .sheet(isPresented: $showingCreateAccountPage) {
                        // on dismiss
                    } content: {
                        CreateAccontView(showingCreateAccountPage: $showingCreateAccountPage)
                    }

                  
                    
                }
                Spacer()

               
              
                
            }
        
        }
        .fullScreenCover(isPresented: $isShowingFullScreen) {
            //
        } content: {
            OnboardingView(isShowingFullScreen: $isShowingFullScreen)
        }

    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage(isShowingFullScreen: true)
    }
}
