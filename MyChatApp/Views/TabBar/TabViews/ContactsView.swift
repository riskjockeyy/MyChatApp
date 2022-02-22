//
//  Contacts.swift
//  MyChatApp
//
//  Created by Bharat Singh on 20/02/22.
//

import SwiftUI

struct ContactsView: View {
   
    @EnvironmentObject var model: ContentViewModel
    var body: some View {
        
        if model.user.count > 0 {
            NavigationView {
                ScrollView {
                    VStack {
                        
                        List(model.user) { user in
                            
                            VStack {
                                Text("LIst of contacts")
                                Text(user.firstname ?? "not found")
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
        else {
            Text("NO Contacts")
        }
        
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
            .environmentObject(ContentViewModel())
    }
}
