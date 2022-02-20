//
//  Contacts.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct ContactsView: View {
    @State var searchableText = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    List(0..<13) { item in
                       Text(String(item + 1))
                    }
                   
                    
                }
                .navigationTitle("Contacts")
                .navigationViewStyle(.stack)
            .searchable(text: $searchableText)
            }
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
