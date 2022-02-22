//
//  ForthView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct ForthView: View {
    @Binding var isShowingFullScreen :Bool
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                TextandImage(image: "bell.fill", topText: "Get Notified", bottomText: "Receive notifications when", bottomSecondText: "friends are looking for you.")
                    .padding(.bottom, 30)
                
                Button {
                    isShowingFullScreen = false
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 194, height: 44)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                        Text("Get Started")
                            .foregroundColor(.blue)
                    }
                }
                
                
            }
            
           

        }
        
    }
}

struct ForthView_Previews: PreviewProvider {
    static var previews: some View {
        ForthView(isShowingFullScreen: .constant(false))
    }
}
