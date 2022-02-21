//
//  ContentView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isShowingFullScreen:Bool
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
        TabView {
            
                FirstView()
                SecondView()
                ThirdView()
            ForthView(isShowingFullScreen: $isShowingFullScreen)
            }
            
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isShowingFullScreen: .constant(true))
    }
}
