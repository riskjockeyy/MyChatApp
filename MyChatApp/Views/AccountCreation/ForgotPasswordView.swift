//
//  ForgotPasswordView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI
import Firebase
struct ForgotPasswordView: View {
    @Binding var showingForgotPasswordPage:Bool
    @State var email = ""
    @State var errorMessage: String?
    @State var showingAlert = false
    var body: some View {
        
        VStack {
            Text("Reset Password")
            TextField("Enter email", text: $email)
                .foregroundColor(Color("secendoryText"))
                .font(.system(size: 18, weight: .regular))
                .frame(width: 275)
                .cornerRadius(20)
                .shadow(radius: 5)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            Button {
                // reset the password
                showingAlert = true
                Auth.auth().sendPasswordReset(withEmail: email) { error in
                    // handetl the error
                    if error != nil {
                        errorMessage = error!.localizedDescription
                    }
                    
                }
            } label: {
                CustomButton(buttonText: "Reset Password")
            }
            
            .alert(isPresented: $showingAlert) {
                
                Alert(title: Text("Email Sent"), message: Text("Please check you email"), dismissButton: .cancel(Text("OK")))
                
                
            }
            
            
            
            if errorMessage != nil {
                Text(errorMessage!)
            }
          

        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(showingForgotPasswordPage: .constant(true))
    }
}
