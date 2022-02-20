//
//  FirstView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            TextandImage(image: "person.3.fill", topText: "Private Messages", bottomText: "Comunicate with your", bottomSecondText: "friends via private messages")
                
        }
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}


