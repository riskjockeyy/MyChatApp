//
//  TextandImage.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import Foundation
import SwiftUI

struct TextandImage: View {
    
    var image: String
    var topText: String
    var bottomText: String
    var bottomSecondText: String
    var body: some View {
        VStack {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .foregroundColor(.white)
                .padding(.bottom, 54)
            
            Text(topText)
                .font(.system(size: 24))
                .padding(.bottom, 14)
                .foregroundColor(.white)
            
            VStack {
                Text(bottomText)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Text(bottomSecondText)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
            }
        }
    }
}
