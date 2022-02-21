//
//  CreateAccontView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct CreateAccontView: View {
    @Binding var showingCreateAccountPage: Bool
    @State var email = ""
    @State var password = ""
    @State var firstname = ""
    @State var lastName = ""
    @State var phoneNumber = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Create Account")
                    .font(.system(size: 24, weight: .medium))
                Spacer()
                
            }
            .padding([.top, .leading, .bottom])
        
        
        
        Group {

            CustomeTextField(text: "First Name", text2: firstname)
            
       
                CustomeTextField(text: "Last Name", text2: lastName)
            
            CustomeTextField(text: "email", text2: email)
                .keyboardType(.emailAddress)
            
            CustomeTextField(text: "Phone Number", text2: phoneNumber)
                .keyboardType(.numberPad)
            
            SecureField("password", text: $password)
                .foregroundColor(Color("secendoryText"))
                .font(.system(size: 18, weight: .regular))
                .frame(width: 275)
                .cornerRadius(20)
                .shadow(radius: 5)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
                
 
        }
        Spacer()
            
            Button {
                showingCreateAccountPage = false
                //sign UP
            } label: {
               CustomButton(buttonText: "Sign Up")
            }
            
            Spacer()
            
            Text("By creating an account you agree with our Terms of Use.")
                .font(.system(size: 12, weight: .light))
            
            Spacer()
    }
        
        

    }
}

struct CreateAccontView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccontView(showingCreateAccountPage: .constant(true))
    }
}
