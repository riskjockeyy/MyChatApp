//
//  ChatView.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct ChatView: View {
    @State var searchableText = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0 ..< 19) { item in
                        HStack {
                            Circle()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.gray)
                                .shadow(radius: 5)
                            VStack {
                                Text("Sam Billing")
                                    
                                    .font(.system(size: 11, weight: .bold))
                                Text("Yes $20")
                                    .font(.system(size: 9, weight: .regular))
                            }
                            Spacer()
                        }
                        .padding(.leading)
                    }
                    
                }
                .navigationTitle("Chats")
                .navigationViewStyle(.stack)
            .searchable(text: $searchableText)
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
