//
//  ContactsFetch.swift
//  MyChatApp
//
//  Created by Bharat Singh on 21/02/22.
//

import Foundation
import Contacts

class ContentViewModel: ObservableObject {
    var contact = [CNContact]()
    func getLocalContacts() {
        
        DispatchQueue.init(label: "getting local contact").async {
            let contact = CNContactStore()
            
            let keys = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactPhoneNumbersKey] as [CNKeyDescriptor]
            
            let fetchRequest = CNContactFetchRequest(keysToFetch: keys)
            
            try! contact.enumerateContacts(with: fetchRequest) { contacts, success in
                
                self.contact.append(contacts)
                
                
                
            }
        }
        
        
    }
    
}
