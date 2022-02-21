//
//  ThirdView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        
        ZStack {
            Color.blue
                .ignoresSafeArea()
            TextandImage(image: "camera.on.rectangle.fill", topText: "Send Photos", bottomText: "Have fun with vour friends by", bottomSecondText: "sending photos and videos to each other")
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
