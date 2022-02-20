//
//  CustomeTextField.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct CustomeTextField: View {
    
    var text:String
    @State var text2:String
    var body: some View {
        TextField(text, text: $text2)
            .foregroundColor(Color("secendoryText"))
            .font(.system(size: 18, weight: .regular))
            .frame(width: 275)
            .cornerRadius(20)
            .shadow(radius: 5)
            .textFieldStyle(.roundedBorder)
            .padding(.bottom)

    }
}

struct CustomeTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomeTextField(text: "firstname", text2: "First")
    }
}
