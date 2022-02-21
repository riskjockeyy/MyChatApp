//
//  ForgotPasswordView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Binding var showingForgotPasswordPage:Bool
    @State var email = ""
    var body: some View {
        
        VStack {
            Text("Reset Password")
            CustomeTextField(text: "enter your email", text2: email)
            
            Button {
                // reset the password 
            } label: {
                CustomButton(buttonText: "Reset Password")
            }

        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(showingForgotPasswordPage: .constant(true))
    }
}
