//
//  SecondView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
           TextandImage(image: "person.2.wave.2.fill", topText: "Group Chat", bottomText: "Create group chats and stay in", bottomSecondText: "touch with your gang.")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
