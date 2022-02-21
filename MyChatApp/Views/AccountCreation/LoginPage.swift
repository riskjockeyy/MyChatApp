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
                       CustomButton(buttonText: "Log In")
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
                       CustomButton(buttonText: "Sign Up")
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
