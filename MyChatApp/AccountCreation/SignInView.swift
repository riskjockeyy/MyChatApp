//
//  SignInView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct SignInView: View {
    @Binding var showingSigninPage :Bool
    @State var email = ""
    @State var password = ""
    @State var showingForgotPasswordPage = false
    @State var sheetWithPhoneNumber = false
    @State var isShowingHomePaga = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Sign In")
                    .font(.system(size: 24, weight: .medium))
                Spacer()
                
            }
            .padding([.top, .leading, .bottom])
            
            
            Group {
                CustomeTextField(text: "email", text2: email)
                
                SecureField("Password", text: $password)
                    .foregroundColor(Color("secendoryText"))
                    .font(.system(size: 18, weight: .regular))
                    .frame(width: 275)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom)
                        
                    
                
                .padding(.bottom)
            }
            
            
            HStack {
                
                Spacer()
                Button("Forget Password?")
                {
                    // login with phone
                    showingForgotPasswordPage = true
                }
                .foregroundColor(.blue)
                .font(.system(size: 12, weight: .regular))
                .sheet(isPresented: $showingForgotPasswordPage) {
                    // on dismiss
                } content: {
                    ForgotPasswordView(showingForgotPasswordPage: $showingForgotPasswordPage)
                }

                
            }
            .padding([.trailing, .bottom])
            Spacer()
            
            
            Button {
              //  showingSigninPage = false
                // Log in
                isShowingHomePaga = true
            } label: {
                
               CustomButton(buttonText: "Log In")
            }
            .fullScreenCover(isPresented: $isShowingHomePaga) {
                
            } content: {
                CustomTabBar(isShowingHomePaga: $isShowingHomePaga)
            }

            
            
            Spacer()
            
            Text("OR")
            Spacer()
            
            Button("Login with phone number") {
                // login with phone
                sheetWithPhoneNumber = true
            }
            .sheet(isPresented: $sheetWithPhoneNumber) {
                //
            } content: {
                LoginWithPhone(sheetWithPhoneNumber: $sheetWithPhoneNumber)
            }

            Spacer()
            
        }
    }
}

//struct SignInView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInView(showingSigninPage: .constant(true), isShowingHomePag)
//    }
//}
