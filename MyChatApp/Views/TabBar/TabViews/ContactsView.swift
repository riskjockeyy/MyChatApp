//
//  Contacts.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct ContactsView: View {
    @State var searchableText = ""
    @EnvironmentObject var model: ContentViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    List(model.user) { user in
                        
                        VStack {
                            Text(user.firstname ?? "")
                            Text(user.phone ?? "")
                        }
                        }
                   
                    
                }
                .navigationTitle("Contacts")
                .navigationViewStyle(.stack)
           // .searchable(text: $searchableText)
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
