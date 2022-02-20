//
//  CustomButton.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct CustomButton: View {
    var buttonText: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 197, height: 44)
                .foregroundColor(.blue)
            .cornerRadius(10)
            
            Text(buttonText)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .medium, design: .default))
            
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonText: "Log In")
    }
}
