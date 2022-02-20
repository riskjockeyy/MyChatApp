//
//  LoginWithPhone.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct LoginWithPhone: View {
    @Binding var sheetWithPhoneNumber:Bool
    @State var phone = ""
    var body: some View {
        
        VStack {
            HStack {
                Text("Sign In")
                Spacer()
            }
            .padding()
            
            CustomeTextField(text: "Phone Number", text2: phone)
                .keyboardType(.numberPad)
            
            HStack {
                Button("Forgot Password") {
                    // forgot password
                }
            }
            .padding([.trailing, .bottom])
            Spacer()
            
            Button {
                // send user a code
                
            } label: {
                CustomButton(buttonText: "Send Code")
            }
            
            Text("OR")
            Spacer()
            
            Button("Login with email") {
                // login with phone
                sheetWithPhoneNumber = false
            }

        }
    }
}

struct LoginWithPhone_Previews: PreviewProvider {
    static var previews: some View {
        LoginWithPhone(sheetWithPhoneNumber: .constant(true))
    }
}
