//
//  CreateAccontView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI
import FirebaseAuth
struct CreateAccontView: View {
    @Binding var showingCreateAccountPage: Bool
    @State var email = ""
    @State var password = ""
    @State var firstname = ""
    @State var lastName = ""
    @State var phoneNumber = ""
    @State var errorMessgea :String?
    
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
            
            TextField("email", text: $email)
            
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
            
            if errorMessgea != nil {
                Text(errorMessgea!)
            }
                
 
        }
        Spacer()
            
            Button {
                
                //sign UP
                
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    if error == nil {
                        showingCreateAccountPage = false
                    }
                    
                    else if error != nil  {
                        errorMessgea = error!.localizedDescription
                    }
                }
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
